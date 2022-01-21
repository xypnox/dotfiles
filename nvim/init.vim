" Neovim Configuration
" by xypnox
"
"
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

"
" EDITING
"
" Align items in columns with separators
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" We recommend updating the parsers on update

" Neoformat
Plug 'sbdchd/neoformat'

" NerdCommenter
Plug 'preservim/nerdcommenter'

"
" Theming
"
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax Theme
Plug 'ghifarit53/tokyonight-vim'

Plug 'preservim/nerdtree'

"
" USABILITY
"
" Zen mode for vim -- configs below
Plug 'folke/zen-mode.nvim'

"
" LSP
"
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

" LSP completion source for nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Typescript
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"
" RUST
"
" rust.vim
Plug 'rust-lang/rust.vim'

" Rust object notation
Plug 'ron-rs/ron.vim'

"
" TOML
"
Plug 'cespare/vim-toml', { 'branch' : 'main' }
"


"
" Markdown
"

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"
" Wiki
"

Plug 'lervag/wiki.vim'


" Initialize plugin system
call plug#end()


"
" Configuration
"

lua require("lsp-config")
lua require("snip")


" Indentation of four spaces
set ts=4 sts=4 sw=4 expandtab
set number relativenumber
set cursorline

" Enable syntax highlighting
syntax enable
" File type identification, plugin and indenting
filetype plugin indent on

" JS
"
autocmd Filetype typescriptcommon setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascriptreact setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" Wordwrap
set breakindent
set formatoptions=l
set lbr


" Formatting
"
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" augroup fmt
" autocmd!
" autocmd BufWritePre * undojoin | Neoformat
" augroup END

" Tags
"

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


nnoremap <SPACE> <Nop>
let mapleader = " "

" fzf
nnoremap <space>s :GFiles --cached --others --exclude-standard<CR>
nnoremap <space>d :Files<CR>
nnoremap <space>rg :Rg<CR>

" Split resizing
nnoremap <silent> <Leader>= :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Format
nnoremap <silent> <Leader>w :Neoformat<CR>

" Save
nnoremap <silent> <Leader>h :w<CR>

" Copy to clipboard
vmap <Leader>y "*y<CR>

let g:wiki_root = '~/notes/vault/'

"
"       RUST        "
" Rust analyzer

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

" NERDTree
nnoremap <C-T> :NERDTreeFocus<CR>

" Set updatetime for CursorHold
" 300ms of no cursor movement to trigger CursorHold
set updatetime=300
" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" have a fixed column for the diagnostics to appear in
" this removes the jitter when warnings/errors flow in
set signcolumn=yes

" Enable type inlay hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
            \ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

" Editing Plugins

" Trim whitespace
autocmd BufWritePre * :%s/\s\+$//e

"
" NERDcommenter
"

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

let g:NERDCustomDelimiters = {
            \ 'tsx': { 'leftAlt': '{/*', 'rightAlt': '*/}', 'left': '//' },
            \ }

nnoremap <silent> <Leader>cx <Plug>NERDCommenterAltDelims

" Easy Align
"
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

"
" Markdown
"

let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1

autocmd FileType markdown highlight htmlBold gui=bold guifg=#ff5370 ctermfg=124
autocmd FileType markdown highlight htmlItalic gui=italic guifg=#E17FC6 ctermfg=124

"
" Wiki
"

let g:wiki_root = '~/notes/vault/'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'


"
" Theming
"

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 1
let g:airline_theme = "tokyonight"
let g:tokyonight_menu_selection_background = 'blue'

colorscheme tokyonight


"
" USABILITY
"

" Zen Mode Configuration
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
