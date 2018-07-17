" plugin/vim-test-config.vim

map    <leader>t    :TestNearest<CR>

function! VagrantTransform(cmd) abort
     return 'scripts/run-in-vagrant '.shellescape('cd '.$VAGRANT_PROJECT_ROOT.'; '.a:cmd)
endfunction

let g:tslime_window_name = 1
let g:tslime_pane_name = 3

let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
let g:test#transformation = 'vagrant'
let test#strategy = "tslime"
let test#php#phpunit#options = '-c phpunit-tdd.xml'
