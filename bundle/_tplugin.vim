" This file was generated by TPluginScan.
if g:tplugin_autoload == 2 && g:loaded_tplugin != 12 | throw "TPluginScan:Outdated" | endif
augroup filetypedetect
" Cucumber
autocmd BufNewFile,BufReadPost *.feature,*.story set filetype=cucumber
augroup END
augroup filetypedetect
" Git
autocmd BufNewFile,BufRead *.git/COMMIT_EDITMSG                set ft=gitcommit
autocmd BufNewFile,BufRead *.git/config,.gitconfig,.gitmodules set ft=gitconfig
autocmd BufNewFile,BufRead git-rebase-todo                     set ft=gitrebase
autocmd BufNewFile,BufRead .msg.[0-9]*
      \ if getline(1) =~ '^From.*# This line is ignored.$' |
      \   set ft=gitsendemail |
      \ endif
autocmd BufNewFile,BufRead *.git/**
      \ if getline(1) =~ '^\x\{40\}\>\|^ref: ' |
      \   set ft=git |
      \ endif

" This logic really belongs in scripts.vim
autocmd BufNewFile,BufRead,StdinReadPost *
      \ if getline(1) =~ '^\(commit\|tree\|object\) \x\{40\}\>\|^tag \S\+$' |
      \   set ft=git |
      \ endif
augroup END
augroup filetypedetect
autocmd BufNewFile,BufRead *.haml setf haml
autocmd BufNewFile,BufRead *.sass setf sass
autocmd BufNewFile,BufRead *.scss setf scss
augroup END
augroup filetypedetect
autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn
      \ if &ft =~# '^\%(conf\|modula2\)$' |
      \   set ft=markdown |
      \ else |
      \   setf markdown |
      \ endif
augroup END
augroup filetypedetect
" Ruby
au BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec	set filetype=ruby

" Ruby on Rails
au BufNewFile,BufRead *.builder,*.rxml,*.rjs		set filetype=ruby

" Rakefile
au BufNewFile,BufRead [rR]akefile,*.rake		set filetype=ruby

" Rantfile
au BufNewFile,BufRead [rR]antfile,*.rant		set filetype=ruby

" IRB config
au BufNewFile,BufRead .irbrc,irbrc			set filetype=ruby

" Rackup
au BufNewFile,BufRead *.ru				set filetype=ruby

" Capistrano
au BufNewFile,BufRead Capfile				set filetype=ruby

" Bundler
au BufNewFile,BufRead Gemfile				set filetype=ruby

" Autotest
au BufNewFile,BufRead .autotest				set filetype=ruby

" eRuby
au BufNewFile,BufRead *.erb,*.rhtml			set filetype=eruby

" Thor
au BufNewFile,BufRead [tT]horfile,*.thor		set filetype=ruby
augroup END
augroup filetypedetect
" textile.vim
"
" Tim Harper (tim.theenchanter.com)

" Force filetype to be textile even if already set
" This will override the system ftplugin/changelog 
" set on some distros
au BufRead,BufNewFile *.textile set filetype=textile
augroup END
call TPluginFiletype('scss', ['haml'])
call TPluginFiletype('gitsendemail', ['git'])
call TPluginFiletype('gitconfig', ['git'])
call TPluginFiletype('eruby', ['ruby'])
call TPluginFiletype('sass', ['haml'])
call TPluginFiletype('markdown', ['markdown'])
call TPluginFiletype('snippet', ['snipmate.vim'])
call TPluginFiletype('cucumber', ['cucumber'])
call TPluginFiletype('html_snip_helper', ['snipmate.vim'])
call TPluginFiletype('jquery', ['jquery'])
call TPluginFiletype('gitcommit', ['git'])
call TPluginFiletype('haml', ['haml'])
call TPluginFiletype('git', ['git'])
call TPluginFiletype('gitrebase', ['git'])
call TPluginFiletype('ruby', ['ruby'])
call TPluginFiletype('textile', ['textile.vim'])
call TPluginAutoload('Align', ['align', '.'])
call TPluginAutoload('AlignMaps', ['align', '.'])
call TPluginAutoload('rails', ['rails', '.'])
call TPluginAutoload('repeat', ['repeat', '.'])
call TPluginAutoload('rubycomplete', ['ruby', '.'])
call TPluginAutoload('ruby_debugger', ['ruby-debugger', '.'])
call TPluginAutoload('common', ['ruby-refactoring', '.'])
call TPluginAutoload('snipMate', ['snipmate.vim', '.'])
call TPluginAutoload('tcomment', ['tcomment', '.'])
call TPluginAutoload('tplugin#autoload#fugitive', ['tplugin_vim', '.'])
call TPluginAutoload('tplugin#autoload#fuzzyfinder', ['tplugin_vim', '.'])
call TPluginAutoload('tplugin#autoload#supertab', ['tplugin_vim', '.'])
call TPluginAutoload('tplugin#autoload#vcscommand', ['tplugin_vim', '.'])
call TPluginAutoload('tplugin#vcsdo', ['tplugin_vim', '.'])
call TPluginAutoload('tplugin', ['tplugin_vim', '.'])
call TPluginRegisterRepo('IndexedSearch')
call TPluginCommand('command! ShowSearchIndex', 'IndexedSearch', 'IndexedSearch')
call TPluginRegisterRepo('MRU')
call TPluginCommand('command! -nargs=? -complete=customlist,s:MRU_Complete MRU', 'MRU', 'mru')
call TPluginCommand('command! -nargs=? -complete=customlist,s:MRU_Complete Mru', 'MRU', 'mru')
call TPluginRegisterRepo('align')
call TPluginMap('nmap <silent> <script> <Plug>AlignMapsWrapperStart', 'align', 'AlignMapsPlugin')
call TPluginMap('vmap <silent> <script> <Plug>AlignMapsWrapperStart', 'align', 'AlignMapsPlugin')
call TPluginMap('nmap <silent> <script> <Plug>AlignMapsWrapperEnd', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_a?', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_a,', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_a', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_a(', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_a=', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_abox', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_acom', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_adcom', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_aocom', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_ascom', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_adec', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_adef', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_afnc', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_aunum', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_aenum', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_Htd', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T|', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T#', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T,', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_Ts,', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T:', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T;', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T=', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T?', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T@', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_Tab', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_Tsp', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_T~', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t|', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t#', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t,', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t:', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t;', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t=', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_ts,', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_ts:', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_ts;', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_ts', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_ts=', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_w=', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t?', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t~', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_t@', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_m=', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_tab', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_tml', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_tsp', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_tsq', 'align', 'AlignMapsPlugin')
call TPluginMap('map <silent> <script> <Plug>AM_tt', 'align', 'AlignMapsPlugin')
call TPluginCommand('com! -bang -range -nargs=* Align', 'align', 'AlignPlugin')
call TPluginCommand('com! -range -nargs=0 AlignReplaceQuotedSpaces', 'align', 'AlignPlugin')
call TPluginCommand('com! -nargs=* AlignCtrl', 'align', 'AlignPlugin')
call TPluginCommand('com! -nargs=0 AlignPush', 'align', 'AlignPlugin')
call TPluginCommand('com! -nargs=0 AlignPop', 'align', 'AlignPlugin')
call TPluginMap('nmap <silent> <Plug>SaveWinPosn', 'align', 'cecutil')
call TPluginMap('nmap <silent> <Plug>RestoreWinPosn', 'align', 'cecutil')
call TPluginCommand('com! -bar -nargs=0 SWP', 'align', 'cecutil')
call TPluginCommand('com! -bar -nargs=0 RWP', 'align', 'cecutil')
call TPluginCommand('com! -bar -nargs=1 SM', 'align', 'cecutil')
call TPluginCommand('com! -bar -nargs=1 RM', 'align', 'cecutil')
call TPluginCommand('com! -bar -nargs=1 DM', 'align', 'cecutil')
call TPluginFunction('SaveWinPosn', 'align', 'cecutil')
call TPluginFunction('RestoreWinPosn', 'align', 'cecutil')
call TPluginFunction('GoWinbufnr', 'align', 'cecutil')
call TPluginFunction('SaveMark', 'align', 'cecutil')
call TPluginFunction('RestoreMark', 'align', 'cecutil')
call TPluginFunction('DestroyMark', 'align', 'cecutil')
call TPluginFunction('QArgSplitter', 'align', 'cecutil')
call TPluginFunction('SaveUserMaps', 'align', 'cecutil')
call TPluginFunction('RestoreUserMaps', 'align', 'cecutil')
call TPluginRegisterRepo('fugitive')
TPluginAfter \V\\fugitive\\plugin\\ do fugitive_utility VimEnter
TPluginAfter \V\\fugitive\\plugin\\ do fugitive VimEnter
call TPluginFunction('fugitive#buffer', 'fugitive', 'fugitive')
call TPluginFunction('fugitive#reload_status', 'fugitive', 'fugitive')
call TPluginFunction('fugitive#statusline', 'fugitive', 'fugitive')
call TPluginCommand('com! -nargs=* Git', 'fugitive')
call TPluginCommand('com! -nargs=* Gcd', 'fugitive')
call TPluginCommand('com! -nargs=* Glcd', 'fugitive')
call TPluginCommand('com! -nargs=* Gcommit', 'fugitive')
call TPluginCommand('com! -nargs=* Ggrep', 'fugitive')
call TPluginCommand('com! -nargs=* Glog', 'fugitive')
call TPluginCommand('com! -nargs=* Gedit', 'fugitive')
call TPluginCommand('com! -nargs=* Gsplit', 'fugitive')
call TPluginCommand('com! -nargs=* Gvsplit', 'fugitive')
call TPluginCommand('com! -nargs=* Gtabedit', 'fugitive')
call TPluginCommand('com! -nargs=* Gpedit', 'fugitive')
call TPluginCommand('com! -nargs=* Gwrite', 'fugitive')
call TPluginCommand('com! -nargs=* -bang -range Gread', 'fugitive')
call TPluginCommand('com! -nargs=* -bang Gdiff', 'fugitive')
call TPluginCommand('com! -nargs=* Gmove', 'fugitive')
call TPluginCommand('com! -nargs=* -range Gblame', 'fugitive')
call TPluginCommand('com! Gremove', 'fugitive')
call TPluginCommand('com! Gstatus', 'fugitive')
TPluginAfter \<fugitive\> do fugitive_utility User Fugitive | do fugitive BufReadPost
" TPluginAfter \<fugitive\> do fugitive_utility VimEnter | do fugitive_utility User Fugitive | do fugitive BufReadPost
call TPluginRegisterRepo('gist')
call TPluginFunction('Gist', 'gist', 'gist')
call TPluginCommand('command! -nargs=? -range=% Gist', 'gist', 'gist')
call TPluginRegisterRepo('matchit')
call TPluginCommand('command! -nargs=0 MatchDebug', 'matchit', 'matchit')
call TPluginRegisterRepo('minibuf')
call TPluginMap('noremap <unique> <script> <Plug>MiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginMap('noremap <unique> <script> <Plug>CMiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginMap('noremap <unique> <script> <Plug>UMiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginMap('noremap <unique> <script> <Plug>TMiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginCommand('command! MiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginCommand('command! CMiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginCommand('command! UMiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginCommand('command! TMiniBufExplorer', 'minibuf', 'minibufexpl')
call TPluginCommand('command! MBEbn', 'minibuf', 'minibufexpl')
call TPluginCommand('command! MBEbp', 'minibuf', 'minibufexpl')
TPluginAfter \V\\minibuf\\plugin\\ do MiniBufExplorer  VimEnter
call TPluginRegisterRepo('nerdtree')
call TPluginCommand('command! -n=? -complete=dir -bar NERDTree', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -n=? -complete=dir -bar NERDTreeToggle', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -n=0 -bar NERDTreeClose', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -n=1 -complete=customlist,s:completeBookmarks -bar NERDTreeFromBookmark', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -n=0 -bar NERDTreeMirror', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -n=0 -bar NERDTreeFind', 'nerdtree', 'NERD_tree')
TPluginAfter \V\\nerdtree\\plugin\\ do NERDTree VimEnter
TPluginAfter \V\\nerdtree\\plugin\\ do NERDTreeHijackNetrw VimEnter
call TPluginFunction('NERDTreeAddMenuItem', 'nerdtree', 'NERD_tree')
call TPluginFunction('NERDTreeAddMenuSeparator', 'nerdtree', 'NERD_tree')
call TPluginFunction('NERDTreeAddSubmenu', 'nerdtree', 'NERD_tree')
call TPluginFunction('NERDTreeAddKeyMap', 'nerdtree', 'NERD_tree')
call TPluginFunction('NERDTreeRender', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -nargs=1 Bookmark', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -complete=customlist,s:completeBookmarks -nargs=1 RevealBookmark', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -complete=customlist,s:completeBookmarks -nargs=1 OpenBookmark', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -complete=customlist,s:completeBookmarks -nargs=* ClearBookmarks', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -complete=customlist,s:completeBookmarks -nargs=+ BookmarkToRoot', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -nargs=0 ClearAllBookmarks', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -nargs=0 ReadBookmarks', 'nerdtree', 'NERD_tree')
call TPluginCommand('command! -buffer -nargs=0 WriteBookmarks', 'nerdtree', 'NERD_tree')
call TPluginRegisterRepo('project')
call TPluginFunction('ProjFoldText', 'project', 'project')
call TPluginFunction('Project_GetAllFnames', 'project', 'project')
call TPluginFunction('Project_GetFname', 'project', 'project')
call TPluginFunction('Project_ForEach', 'project', 'project')
call TPluginMap('nnoremap <script> <Plug>ProjectOnly', 'project', 'project')
call TPluginCommand('command -nargs=? -complete=file Project', 'project', 'project')
call TPluginMap('nnoremap <script> <Plug>ToggleProject', 'project', 'project')
call TPluginRegisterRepo('rails')
TPluginAfter \V\\rails\\plugin\\ do railsPluginDetect VimEnter
call TPluginCommand('command! -bar -bang -nargs=* -complete=dir Rails', 'rails', 'rails')
TPluginAfter \V\\rails\\plugin\\ do railsPluginAbolish VimEnter
TPluginAfter \V\\rails\\plugin\\ do railsPluginMenu VimEnter
call TPluginRegisterRepo('ruby-debugger')
call TPluginCommand('command! -nargs=* -complete=file Rdebugger', 'ruby-debugger', 'ruby_debugger')
call TPluginCommand('command! -nargs=0 RdbStop', 'ruby-debugger', 'ruby_debugger')
call TPluginCommand('command! -nargs=1 RdbCommand', 'ruby-debugger', 'ruby_debugger')
call TPluginCommand('command! -nargs=0 RdbTest', 'ruby-debugger', 'ruby_debugger')
call TPluginCommand('command! -nargs=1 RdbEval', 'ruby-debugger', 'ruby_debugger')
call TPluginCommand('command! -nargs=1 RdbCond', 'ruby-debugger', 'ruby_debugger')
call TPluginCommand('command! -nargs=1 RdbCatch', 'ruby-debugger', 'ruby_debugger')
call TPluginCommand('command! -nargs=0 RdbLog', 'ruby-debugger', 'ruby_debugger')
call TPluginRegisterRepo('ruby-refactoring')
call TPluginCommand('command! RAddParameter', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! RAddParameterNB', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! RInlineTemp', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! RExtractLet', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! RConvertPostConditional', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! -range RExtractConstant', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! -range RExtractLocalVariable', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! -range RRenameLocalVariable', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! -range RRenameInstanceVariable', 'ruby-refactoring', 'ruby-refactoring')
call TPluginCommand('command! -range RExtractMethod', 'ruby-refactoring', 'ruby-refactoring')
call TPluginRegisterRepo('shoulda')
call TPluginRegisterRepo('snipmate.vim')
call TPluginFunction('MakeSnip', 'snipmate.vim', 'snipMate')
call TPluginFunction('ExtractSnips', 'snipmate.vim', 'snipMate')
call TPluginFunction('ExtractSnipsFile', 'snipmate.vim', 'snipMate')
call TPluginFunction('ResetSnippets', 'snipmate.vim', 'snipMate')
call TPluginFunction('ResetAllSnippets', 'snipmate.vim', 'snipMate')
call TPluginFunction('ReloadSnippets', 'snipmate.vim', 'snipMate')
call TPluginFunction('ReloadAllSnippets', 'snipmate.vim', 'snipMate')
call TPluginFunction('GetSnippets', 'snipmate.vim', 'snipMate')
call TPluginFunction('TriggerSnippet', 'snipmate.vim', 'snipMate')
call TPluginFunction('BackwardsSnippet', 'snipmate.vim', 'snipMate')
call TPluginFunction('ShowAvailableSnips', 'snipmate.vim', 'snipMate')
call TPluginRegisterRepo('supertab')
call TPluginFunction('SuperTabSetDefaultCompletionType', 'supertab', 'supertab')
call TPluginFunction('SuperTabSetCompletionType', 'supertab', 'supertab')
call TPluginFunction('SuperTabAlternateCompletion', 'supertab', 'supertab')
call TPluginCommand('command SuperTabHelp', 'supertab', 'supertab')
call TPluginMap('imap <tab>', 'supertab', 'supertab')
call TPluginRegisterRepo('surround')
call TPluginMap('nnoremap <silent> <Plug>Dsurround', 'surround', 'surround')
call TPluginMap('nnoremap <silent> <Plug>Csurround', 'surround', 'surround')
call TPluginMap('nnoremap <silent> <Plug>Yssurround', 'surround', 'surround')
call TPluginMap('nnoremap <silent> <Plug>YSsurround', 'surround', 'surround')
call TPluginMap('nnoremap <silent> <Plug>Ysurround', 'surround', 'surround')
call TPluginMap('nnoremap <silent> <Plug>YSurround', 'surround', 'surround')
call TPluginMap('vnoremap <silent> <Plug>Vsurround', 'surround', 'surround')
call TPluginMap('vnoremap <silent> <Plug>VSurround', 'surround', 'surround')
call TPluginMap('vnoremap <silent> <Plug>VgSurround', 'surround', 'surround')
call TPluginMap('inoremap <silent> <Plug>Isurround', 'surround', 'surround')
call TPluginMap('inoremap <silent> <Plug>ISurround', 'surround', 'surround')
call TPluginRegisterRepo('tcomment')
call TPluginFunction('TCommentDefineType', 'tcomment', 'tComment')
call TPluginFunction('TCommentTypeExists', 'tcomment', 'tComment')
call TPluginCommand('command! -bang -complete=customlist,tcomment#FileTypes -range -nargs=+ TCommentAs', 'tcomment', 'tComment')
call TPluginCommand('command! -bang -range -nargs=* TComment', 'tcomment', 'tComment')
call TPluginCommand('command! -bang -range -nargs=* TCommentRight', 'tcomment', 'tComment')
call TPluginCommand('command! -bang -range -nargs=* TCommentBlock', 'tcomment', 'tComment')
call TPluginCommand('command! -bang -range -nargs=* TCommentInline', 'tcomment', 'tComment')
call TPluginCommand('command! -bang -range -nargs=* TCommentMaybeInline', 'tcomment', 'tComment')
