" plugin/vim-test-config.vim

function! VagrantTransform(cmd) abort
    let vagrant_project = '/vagrant/bonfyre_app'
    return 'vagrant ssh --command '.shellescape('cd '.vagrant_project.'; '.a:cmd)
endfunction

let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
let g:test#transformation = 'vagrant'
let test#strategy = "dispatch"
let test#php#phpunit#options = '-c phpunit-tdd.xml'
