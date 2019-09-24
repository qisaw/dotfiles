" gui settings
" use solarized in macvim
if (has('gui_running'))
  set background=dark
  colorscheme solarized
  "download from here
  "https://github.com/powerline/fonts
  set guifont=Meslo\ LG\ L\ for\ Powerline\ Regular:h26
else
  " use deep-space in nvim
  set termguicolors
  set background=dark
  colorscheme deep-space
endif
