require('vis')

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
    vis:command('set theme darkest-space')
    vis:command('set number')
    win.options.tabwidth    = 4
    win.options.expandtab   = true
    win.options.colorcolumn = 80
end)
