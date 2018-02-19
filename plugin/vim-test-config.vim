function! VagrantTransform(cmd) abort
    " let vagrant_project = get(matchlist(s:cat('../../Vagrantfile'), '\vconfig\.vm.synced_folder ["''].+[''"], ["''](.+)[''"]'), 1)
    let vagrant_project = "/vagrant/bonfyre_app"
    return 'vagrant ssh --command '.shellescape('cd '.vagrant_project.'; '.a:cmd)
endfunction

let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
let g:test#transformation = 'vagrant'
let test#strategy = "dispatch"
