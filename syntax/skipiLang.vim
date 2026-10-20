" Vim syntax file
" Language: skipiLang


if exists("b:current_syntax")
  finish
endif

syntax keyword slKeyword return break continue const from
highlight link slKeyword Keyword

syntax keyword slStructure struct bind union enum
highlight link slStructure Structure

syntax keyword slInclude include
highlight link slInclude Include

syntax keyword slRepeat while for do
highlight link slRepeat Repeat

syntax keyword slConditional if else switch
highlight link slConditional Conditional

syntax keyword slLabel case default
highlight link slLabel Label

syntax keyword slType void int unsigned char float double long short u8 u16 u32 u64 i8 i16 i32 i64 f16 f32 f64
highlight link slType Type

syntax match slFunction "\<[A-Za-z_][A-Za-z0-9_]*\ze("
highlight link slFunction Function

syntax match slOperator "[+\-*/%=&|!<>^~]\+"
highlight link slOperator Operator

syntax match slDelimiter "[,.;()\[\]{}]"
highlight link slDelimiter Delimiter

syntax match slHexNumber "\<0[xX][0-9A-Fa-f]\+\>"
syntax match slNumber "\<\d\+\>"
highlight link slHexNumber Number
highlight link slNumber Number

syntax match slEscape "\\." contained
highlight link slEscape SpecialChar

syntax region slString start=/"/ skip=/\\"/ end=/"/ contains=slEscape
highlight link slString String

syntax region slChar start=/'/ skip=/\\'/ end=/'/ contains=slEscape
highlight link slChar Character

syntax match slComment "//.*$"
syntax region slComment start="/\*" end="\*/"
highlight link slComment Comment

let b:current_syntax = "sl"

