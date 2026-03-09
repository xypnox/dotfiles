-- lua/custom/telescope.lua

local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local Job = require("plenary.job")

--[[
This action function is called when you press <CR> on an entry.
It runs a *separate* job to fetch the specific commit's content.
This is a correct use case for a manual plenary.Job, as it's a discrete action.
--]]
local function open_file_history_action(prompt_bufnr)
  local selection = action_state.get_selected_entry()
  actions.close(prompt_bufnr)
  if not selection then return end

  -- The 'value' of our entry is the raw line from git: "hash|date|subject"
  local commit_hash = vim.split(selection.value, "|")[1]
  if not commit_hash then return end

  local picker = action_state.get_current_picker(prompt_bufnr)
  local file_path = picker.file_path
  local original_bufnr = picker.original_bufnr

  -- Command: git show <commit>:<path> [4]
  -- Shows the contents of a file blob at a specific commit.
  Job:new({
    command = "git",
    args = { "show", commit_hash .. ":" .. file_path },
    on_exit = function(j, return_val)
      if return_val == 0 then
        -- We must schedule the UI update to run on Neovim's main loop. [1]
        vim.schedule(function()
          local new_buf = vim.api.nvim_create_buf(false, true)
          vim.api.nvim_buf_set_option(new_buf, "bufhidden", "wipe")
          vim.api.nvim_buf_set_option(new_buf, "buftype", "nofile")
          vim.api.nvim_buf_set_option(new_buf, "readonly", true)
          vim.api.nvim_buf_set_option(new_buf, "swapfile", false)
          vim.api.nvim_buf_set_lines(new_buf, 0, -1, false, j:result())
          local original_ft = vim.api.nvim_buf_get_option(original_bufnr, "filetype")
          vim.api.nvim_buf_set_option(new_buf, "filetype", original_ft)
          vim.api.nvim_open_win(new_buf, true, { split = "right", win = vim.api.nvim_get_current_win() })
        end)
      else
        vim.notify("Git show failed for commit " .. commit_hash, vim.log.levels.ERROR)
      end
    end,
  }):start()
end

local M = {}
function M.file_history()
  local file_path = vim.fn.expand("%:p")
  if not file_path or file_path == "" then
    vim.notify("Not a file buffer.", vim.log.levels.WARN)
    return
  end

  local original_bufnr = vim.api.nvim_get_current_buf()

  -- Command: git log [4]
  -- Parameters:
  --   --follow: Continues listing the history of a file beyond renames.
  --   --pretty=format...: A custom format for easy parsing.
  --   --date=short: Displays the date in YYYY-MM-DD format.
  --   --: Separator to ensure the next argument is a file path.
  local command_to_run = { "git", "log", "--follow", "--pretty=format:%h|%ad|%s", "--date=short", "--", file_path }

  -- This is the picker construction, now using the *correct*, high-level Telescope API.
  pickers.new({
    prompt_title = "Git History: " .. vim.fn.fnamemodify(file_path, ":t"),
    finder = finders.new_job(
      command_to_run,
      -- This is the 'opts' table, which contains the entry_maker. [2, 3]
      -- This was the critical point of failure in previous attempts.
      {
        entry_maker = function(entry)
          if entry == nil or entry == "" then return nil end
          local parts = vim.split(entry, "|", { plain = true, trimempty = true })
          if #parts == 3 then
            return {
              value = entry, -- The raw line: "hash|date|subject"
              display = string.format("%-8s | %-11s | %s", parts[1], parts[2], parts[3]),
              ordinal = entry, -- Use the raw entry for default sorting
            }
          end
          return nil
        end,
      }
    ),
    sorter = conf.generic_sorter({}),
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(open_file_history_action)
      return true
    end,
    -- Pass metadata for the action to use later
    file_path = file_path,
    original_bufnr = original_bufnr,
  }):find()
end

return M
