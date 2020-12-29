let g:nvim_home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Load base configuration files + plugins
for f in split(globpath(expand(g:nvim_home . '/init/before'), '*.vim'), '\n')
  exec 'source' f
endfor

" Load any plugin overrides + extra configs
for f in split(globpath(expand(g:nvim_home . '/init/after'), '*.vim'), '\n')
  exec 'source' f
endfor

" Load plugin settings
for f in split(globpath(expand(g:nvim_home . '/plugin'), '**/*.vim'), '\n')
  exe 'source' f
endfor
