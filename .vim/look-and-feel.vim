if (has('gui_running'))
  colorscheme PaperColor
  set background=light
  "download from here
  "https://github.com/powerline/fonts
  set guifont=Meslo\ LG\ L\ for\ Powerline\ Regular:h26
else
  " use deep-space in nvim
  set termguicolors
  "colorscheme duskfox
  colorscheme PaperColor
  set background=light
endif
