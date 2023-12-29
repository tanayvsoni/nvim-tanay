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

" Make # highlighted
syntax match talHash /#/
highlight link talHash Constant

" Define the syntax for variable assignments
syntax match talVarAssignment "\w\+\ze\s*="
highlight link talVarAssignment Identifier

" Remaining Labels and Vars
syntax match talIdentifier /\v<\w+>/
highlight link talIdentifier Identifier

" Define the syntax for strings (double quotes)
syntax region talString start=+"+ skip=+\\\\\|\\"+ end=+"+
highlight link talString String

" Define the syntax for characters (single quotes)
syntax region talStringSingle start=+'+ skip=+\\\\\|\\'+ end=+'+
highlight link talStringSingle String

" Define the syntax for labels
syntax match talLabel /\w\+\ze:/
highlight link talLabel Label

" Instructions
syntax keyword talInstruction adc and asl bcc bcs beq bit bmi bne bpl brk bvc bvs clc cli clv cmp cpx cpy dec dex dey eor hlt inc inx iny jmp jsr lda ldx ldy lsr nop ora out pha php pla plp rol ror rti rts sec sei sta stx sty sub tax tay tsa tsx txs tya
highlight link talInstruction Function

" Numbers
syntax match talNumber "\v(\$[0-9A-Fa-f]+|\%[01]+|\d+)"
highlight link talNumber Number

" Registers
syntax match talRegister /\<r[XY]\>/
highlight link talRegister Structure

let b:current_syntax = "TAL"
