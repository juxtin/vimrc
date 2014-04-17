let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
:command! PuppetDocsPreview execute "!ruby " . s:path . "/preview.rb %"
