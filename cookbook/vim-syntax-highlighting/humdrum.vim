" Vim 5.6 syntax file
" Language:	 Humdrum file
" Programmer:	 Craig Stuart Sapp <craig@ccrma.stanford.edu>
" Webpage:       http://127.0.0.1:8000/cookbook/vim-syntax-highlighting
" URL:           http://127.0.0.1:8000/cookbook/vim-syntax-highlighting/humdrum.vim
" Creation Date: Fri Dec  8 11:41:45 PST 2000
" Last Change:	 Fri Dec  8 13:57:53 PST 2000
"
" Instructions:  Save this file in ~/.vim/humdrum.vim
"                This add these lines to ~/.vimrc:
"                   syntax on
"                   au BufRead,BufNewFile *.hmd set filetype=humdrum 
"                   au BufRead,BufNewFile *.krn set filetype=humdrum 
"                   au! Syntax humdrum  source ~/.vim/humdrum.vim
"                Alternatively load the file manually with the vim command:
"                   :so humdrum.vim
"                (adding a path name if located in a different directory
"                from the current working directory).
"

" Remove any old syntax stuff hanging around
syntax clear

syntax match Data           "^[^!\*]"            contains=BadTabbing,Chord
syntax match Chord          "[^\t][^\t]* [^\t]*" contains=ExtraSpace
syntax match ExtraSpace     "^ "
syntax match ExtraSpace     " $"
syntax match ExtraSpace     "  *\t"
syntax match ExtraSpace     "\t  *"
syntax match ExtraSpace     "   *"
syntax match BadTabbing     "\t\t\t*" 
syntax match BadTabbing     "^\t"
syntax match BadTabbing     "\t$"
syntax match GlobalComment  "^!![^!].*$"
syntax match BibRecord      "^!!![^ ].*:.*$"
syntax match Interpretation "^\*.*$"             contains=BadTabbing,Exclusive
syntax match Measure        "^=[^\t]*[\t]?"      contains=BadTabbing
syntax match Measure        "=[^\t]*[\t]"        contains=BadTabbing
syntax match Measure        "=[^\t]*$"           contains=BadTabbing
syntax match LocalComment   "^![^!].*$"          contains=BadTabbing
syntax match Exclusive      "\*\*[^\t]*"  

if !exists("did_humdrum_syntax_inits")
  let did_humdrum_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  hi darkgreen ctermfg=darkgreen   guifg=darkgreen
  hi darkblue  ctermfg=darkblue    guifg=darkblue
  hi red       ctermfg=red         guifg=red
  hi yellow    ctermfg=yellow      guifg=yellow
  hi white     ctermfg=white       guifg=white
  hi cyan      ctermfg=cyan        guifg=cyan
  hi magenta   ctermfg=magenta     guifg=magenta
  hi measure   ctermfg=darkgrey    ctermbg=lightgrey guifg=lightgrey guibg=black
  hi space     ctermbg=darkblue    guibg=darkblue
  hi link GlobalComment     cyan
  hi link LocalComment      darkblue
  hi link Interpretation    magenta
  hi link Measure           measure   
  hi link Exclusive         red
  hi link Chord             white
  hi link BadTabbing        Error
  hi link ExtraSpace        space
  hi link BibRecord         darkgreen
endif


let b:current_syntax = "humdrum"

