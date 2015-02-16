" Default colorscheme
" Make sure you have this colorscheme present
colorscheme badwolf

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=999 columns=999
endif

set guitablabel=%t\ %M 		" Show filename and modifier indicator
set guioptions-=T 		" Do not show the toolbar in the GUI (only the menu)
