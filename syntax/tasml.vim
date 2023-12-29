" Syntax file for tal language
if exists("b:current_syntax")
  finish
endif

" Define the syntax for comments
syntax match talComment "\v;.*$"
highlight link talComment Comment

" Define the syntax for block comments
syntax region talBlockComment start="\v/\*" end="\v\*/"
highlight link talBlockComment Comment

" Define the syntax for words after a period (preprocessor statements)
syntax match talPreprocessor "\.\zs\w\+"
highlight link talPreprocessor StorageClass

" Define the syntax for variable assignments
syntax match talVarAssignment "\w\+\ze\s*="
highlight link talVarAssignment Identifier

" Define the syntax for strings (double quotes)
syntax region talString start=+"+ skip=+\\\\\|\\"+ end=+"+
highlight link talString String

" Define the syntax for characters (single quotes)
syntax region talStringSingle start=+'+ skip=+\\\\\|\\'+ end=+'+
highlight link talStringSingle String

" Define the syntax for labels
syntax match talLabel /\w\+\ze:/
highlight link talLabel Label

let b:current_syntax = "TAL"
