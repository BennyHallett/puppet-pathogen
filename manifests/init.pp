class pathogen($user_home) {
  exec { 'pathogen':
    command => "/bin/mkdir -p ${user_home}/.vim/autoload ${user_home}/.vim/bundle; /usr/bin/curl -LSso ${user_home}/.vim/autoload/pathgen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim",
    onlyif => "/usr/bin/test ! -f ${user_home}/.vim/autoload/pathogen.vim";
  }
}
