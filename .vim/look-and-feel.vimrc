" gui settings
" use solarized in macvim
if (has('gui_running'))
  set background=dark
  colorscheme solarized
else
  " use deep-space in nvim
  set termguicolors
  set background=dark
  colorscheme deep-space
endif

"download from here
"https://github.com/powerline/fonts
set guifont=Meslo\ LG\ L\ Regular\ for\ Powerline:h14

