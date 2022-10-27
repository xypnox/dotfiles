"
" Neovim Configuration
" by xypnox
"
"
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"
"
" ╔═╗  ┬    ┬ ┬  ┌─┐  ┬  ┌┐┌  ┌─┐
" ╠═╝  │    │ │  │ ┬  │  │││  └─┐
" ╩    ┴─┘  └─┘  └─┘  ┴  ┘└┘  └─┘
"
"
" Imports
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
call plug#begin('~/.local/share/nvim/plugged')

"
" EDITING
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Align items in columns with separators
Plug 'junegunn/vim-easy-align'
"
" fzf
Plug 'junegunn/fzf', { 'dir': '~/fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Autoclose tags
Plug 'alvan/vim-closetag'

" Surround commands for ({[...
Plug 'tpope/vim-surround'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" multi-cursor
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Git signs in buffer etc
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Git conflict markers and actions to resolve them
Plug 'akinsho/git-conflict.nvim', { 'tag': '*' }

" sneak to different locations via s
Plug 'justinmk/vim-sneak'

" Todo comments
" Requires plenary^
Plug 'folke/todo-comments.nvim'

" neoformat
Plug 'sbdchd/neoformat'

" nerdcommenter
" Plug 'preservim/nerdcommenter'
" Plug 'numToStr/Comment.nvim'
" Plug 'terrortylor/nvim-comment'
Plug 'tpope/vim-commentary'

" Show colors for hex
Plug 'norcalli/nvim-colorizer.lua'

"
" Theming
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"
" Airline file statusbar
Plug 'nvim-lualine/lualine.nvim'

" Syntax Theme
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'navarasu/onedark.nvim'
" Plug 'tiagovla/tokyodark.nvim'



" Sidebar for tree files
Plug 'preservim/nerdtree'

"
" USABILITY
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Zen mode for vim -- configs below
Plug 'folke/zen-mode.nvim'

" Fancy start screen
Plug 'mhinz/vim-startify'

" Smooth scrolling
Plug 'karb94/neoscroll.nvim'


"
" LSP
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'
" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'
" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'


" Snippet engine
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Completion framework
Plug 'hrsh7th/nvim-cmp'


" ~~F*ck~~ Copilot is nice till its free
Plug 'github/copilot.vim'

"
" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Indent lines
Plug 'lukas-reineke/indent-blankline.nvim'

" Typescript
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" Go to Reference/Implementation Preview
Plug 'rmagatti/goto-preview'


" Show all the trouble the code is causing: errors and stuff from lsp
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
"
" RUST
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" rust.vim
Plug 'rust-lang/rust.vim'

" Rust object notation
Plug 'ron-rs/ron.vim'

"
" JS
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Comment strings inside tsx
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'MunifTanjim/nui.nvim' " Required by package-info
Plug 'vuki656/package-info.nvim'

"
" TOML
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
Plug 'cespare/vim-toml', { 'branch' : 'main' }
"


"
" Markdown
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'aserebryakov/vim-todo-lists'

"
" Wiki
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

Plug 'lervag/wiki.vim'

" Completion for wiki links
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

" Autosave functionality
" Plug 'Pocco81/auto-save.nvim'

"
" CUSTOM PLUGINS
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Plug '~/Projects/notes.pro/cmp-wiki-para'

call plug#end()


" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"
"
" ╔═╗  ┌─┐  ┌┐┌  ┌─┐  ┬  ┌─┐
" ║    │ │  │││  ├┤   │  │ ┬
" ╚═╝  └─┘  ┘└┘  └    ┴  └─┘
"
"
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Make space the LEADER

nnoremap <SPACE> <Nop>
let mapleader = " "
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

"
" Imports
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
lua require("lsp-config")
lua require("snip")
lua require("comments-config")
lua require("treesitter-config")
lua require("js-config")
lua require("git-config")
lua require("indent-config")
lua require('lualine-config')
lua require('copilot-config')
lua require('onedark-config')
lua require('todo-comments-config')

" Plugin Setups
" (Only add when no config needed)
lua require('neoscroll').setup()

" Indentation of four spaces
set ts=4 sts=4 sw=4 expandtab
set number relativenumber
set cursorline
set ignorecase

" Enable syntax highlighting
syntax enable

" File type identification, plugin and indenting
filetype plugin indent on

" Enable mouse clicks to navigate
set mouse=a

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Wordwrap
set breakindent
set formatoptions=l
set lbr


" Set language for spell check
set spelllang=en_US,cjk


"
" Formatting
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1


" Sneak
"
let g:sneak#label = 1
" augroup fmt
" autocmd!
" autocmd BufWritePre * undojoin | Neoformat
" augroup END
"
"
" Tags
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.tsx,*.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ 'typescriptreact': 'jsxRegion,tsxRegion',
            \ 'javascriptreact': 'jsxRegion',
            \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

"
" General Shortcuts
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

" terminal
" tnoremap <Esc> <C-\><C-n>
" Conflicts with escape of fzf

" fzf
nnoremap <space>s :GFiles --cached --others --exclude-standard<CR>
nnoremap <space>d :Files<CR>
nnoremap <space>r :Rg<CR>

" Split resizing
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Format
nnoremap <silent> <Leader>p :Neoformat<CR>

" Save
nnoremap <silent> <Leader>h :w<CR>

" Copy to clipboard
vmap <Leader>y "*y<CR>


"
" Multiediting
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
let g:VM_maps = {}
let g:VM_leader                     = '\'
let g:VM_maps['Toggle Single Region']        = ''
" C-i because C-m was fucking weird with the <cr>
let g:VM_maps['Find Under']         = '<C-s>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-s>'           " replace visual C-n

"
" AutoCompletion
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
set shortmess+=c

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <Tab> as trigger keys
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)

"
" Folding
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
set foldmethod=indent
set nofoldenable
set foldlevel=99

"
" NERDTree
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
nnoremap <C-T> :NERDTreeFocus<CR>


" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>


" Gitsigns
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
nnoremap <Leader>nn :Gitsigns preview_hunk<CR>


" Editing Plugins

" Trim whitespace
autocmd BufWritePre * :%s/\s\+$//e

"
" NERDTree
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
nnoremap <Leader>t :NERDTreeFind<CR>


"
" NERDcommenter
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'

" let g:NERDCustomDelimiters = {
"             \ 'tsx': { 'leftAlt': '{/*', 'rightAlt': '*/}', 'left': '//' },
"             \ }

" nnoremap <silent> <Leader>cx <Plug>NERDCommenterAltDelims

"
" Easy Align
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Split switching
nmap <silent> <C-S-w> :wincmd<Space>
nmap <silent> <Leader>bh :wincmd h<CR>
nmap <silent> <Leader>bj :wincmd j<CR>
nmap <silent> <Leader>bk :wincmd k<CR>
nmap <silent> <Leader>bl :wincmd l<CR>

" Trouble
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>
"
"
"
"
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"
"
" ╦    ┌─┐  ┌┐┌  ┌─┐  ┬ ┬  ┌─┐  ┌─┐  ┌─┐  ┌─┐
" ║    ├─┤  │││  │ ┬  │ │  ├─┤  │ ┬  ├┤   └─┐
" ╩═╝  ┴ ┴  ┘└┘  └─┘  └─┘  ┴ ┴  └─┘  └─┘  └─┘
"
"
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

"
" RUST
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

" Rust analyzer
"
" Setup the basic settings for markdown editing
function! SetupRust()
    set ts=4 sts=4 sw=4 expandtab " Indent = 4
    " Set updatetime for CursorHold
    " 300ms of no cursor movement to trigger CursorHold
    set updatetime=300
    " Show diagnostic popup on cursor hold
    " autocmd CursorHold * lua vim.lsp.diagnostic.open_float()

    " Enable type inlay hints
    autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
                \ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

endfunction

"
" JS
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

autocmd Filetype typescriptcommon setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

"
" Markdown
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_autowrite = 1
" let g:vim_markdown_folding_level = 4
let g:vim_markdown_folding_disabled = 1

" Setup the basic settings for markdown editing
function! SetupMarkdown()
    "lua require("autosave-config")

    set omnifunc=wiki#complete#omnicomplete
    "     " enable ncm2 for wikilink completion for all buffers
    "     augroup my_cm_setup
    "         autocmd!
    "         autocmd BufEnter * call ncm2#enable_for_buffer()
    "         autocmd User WikiBufferInitialized call ncm2#register_source({
    "                     \ 'name': 'wiki',
    "                     \ 'priority': 9,
    "                     \ 'scope': ['wiki'],
    "                     \ 'word_pattern': '\w+',
    "                     \ 'complete_pattern': '\[\[',
    "                     \ 'on_complete': ['ncm2#on_complete#delay', 200,
    "                     \                 'ncm2#on_complete#omni',
    "                     \                 'wiki#complete#omnicomplete'],
    "                     \})
    "     augroup END

    " " For highlighting wiki links [WIP]
    " augroup mdkWikiLinks
    "     au!
    "     au Syntax * syn match mkdWikiLink start="\[\[" end="\]\]" contained oneline
    " augroup END
    " hi def link mkdWikiLink mkdLink
    " highlight mkdWikiLink term=italic,bold cterm=italic ctermbg=darkyellow ctermfg=white gui=bold,italic guibg=darkyellow guifg=white


    set ts=2 sts=2 sw=2 expandtab " Indent = 2

    " Fancy colors for some elements
    highlight htmlBold gui=bold guifg=#ff5370 ctermfg=124
    highlight htmlItalic gui=italic guifg=#E17FC6 ctermfg=124
    highlight mkdBlockquote gui=italic guifg=#E17FC6 ctermfg=124

    nmap <silent> <Leader>t :Toc<CR>

    " nmap <silent> <cr> :<plug>(wiki-link-follow)
endfunction

" We call the function here on every markdown file
autocmd filetype markdown call SetupMarkdown()


"
" Wiki
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

let g:wiki_root = '~/notes/vault/'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'


" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"
"
" ╔═╗  ┌┬┐  ┬ ┬  ┬    ┬  ┌┐┌  ┌─┐
" ╚═╗   │   └┬┘  │    │  │││  │ ┬
" ╚═╝   ┴    ┴   ┴─┘  ┴  ┘└┘  └─┘
"
"
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

"
" Theming
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

set termguicolors

colorscheme onedark

highlight IndentBlanklineChar guifg=#272B40 gui=nocombine



"
" USABILITY
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
"
" Colorizer
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

lua require('colorizer').setup()


" Zen Mode Configuration
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
lua << EOF
require("zen-mode").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    window = {
        --backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        -- height and width can be:
        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        -- * a function that returns the width or the height
        width = 80, -- width of the Zen window
        height = 40, -- height of the Zen window
        -- by default, no options are changed for the Zen window
        -- uncomment any of the options below, or add other vim.wo options you want to apply
        options = {
            -- signcolumn = "no", -- disable signcolumn
            number = false, -- disable number column
            relativenumber = false, -- disable relative numbers
            -- cursorline = false, -- disable cursorline
            -- cursorcolumn = false, -- disable cursor column
            -- foldcolumn = "0", -- disable fold column
            -- list = false, -- disable whitespace characters
            },
        },

    plugins = {
        -- disable some global vim options (vim.o...)
        -- comment the lines to not apply the options
        options = {
            enabled = true,
            ruler = true, -- disables the ruler text in the cmd line area
            showcmd = false, -- disables the command in the last line of the screen
            },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = false }, -- disables the tmux statusline
        -- this will change the font size on kitty when in zen mode
        -- to make this work, you need to set the following kitty options:
        -- - allow_remote_control socket-only
        -- - listen_on unix:/tmp/kitty
        kitty = {
            enabled = false,
            font = "+4", -- font size increment
            },
        },

    -- callback where you can add custom code when the Zen window opens
    on_open = function(win)
    end,
    -- callback where you can add custom code when the Zen window closes
    on_close = function()
    end,
    }
EOF

