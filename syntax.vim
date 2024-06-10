if exists("b:current_syntax")
    finish
endif

syn match label "\v\.[_a-zA-Z0-9]+"
syn match ident "\v[_a-zA-Z0-9]+"

syn match comment "\v//.*$"
syn region comment start="/\*" end="\*/"

syn match mac "\v\@[_a-zA-Z0-9]+"
syn keyword mac minreg minheap bits run minstack
syn match register "\v\c((r|\$)\d+|pc|sp)"
syn match heap "\v\c(m|\#)\d+"
syn match port "\v\%[_a-zA-Z0-9]+"

syn match integer "\v(\\+|\\-)?(0[xX][A-Fa-f0-9]+|0[bB][0-1]+|0[oO][0-7]+|[0-9]+)"
syn region string start="\"" end="\v(\"|\n)"
syn region char start="\'" end="\v(\'|\n)"

syn match instrs "\v\c(add|rsh|lod|str|bge|nor|sub|jmp|mov|nop|imm|lsh|inc|dec|neg|and|or|not|xnor|xor|nand|brl|brg|bre|bne|bod|bev|ble|brz|bnz|brn|brp|psh|pop|cal|ret|hlt|cpy|brc|bnc|mlt|div|mod|bsr|bsl|srs|bss|out|in|dw|sete|setne|setg|setl|setge|setle|setc|setnc|llod|lstr|sdiv|sbrl|sbrg|sble|ssetl|ssetg|ssetle|ssetge|umlt|sumlt)"

hi def link comment Comment
hi def link mac Define
hi def link register Type
hi def link heap Type
hi def link label Constant
hi def link port Constant
hi def link integer Number
hi def link instrs Identifier
hi def link string String
hi def link char Character

let b:current_syntax = "urcl"
