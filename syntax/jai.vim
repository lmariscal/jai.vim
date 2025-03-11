if exists("b:current_syntax")
  finish
endif

syntax region jaiHereString matchgroup=jaiMacro start=/\v#string\s*(,\s*cr\s*)?\z(<\w+>)/ end=/\v^\s*\z1/
syntax keyword jaiRemove remove
syntax keyword jaiCase case

syntax keyword jaiUsing using
syntax keyword jaiNew new
syntax keyword jaiDelete delete
syntax keyword jaiCast cast

syntax keyword jaiStruct struct
syntax keyword jaiUnion union
syntax keyword jaiEnum enum

syntax keyword jaiIf if
syntax keyword jaiIfx ifx
syntax keyword jaiThen then
syntax keyword jaiElse else
syntax keyword jaiFor for
syntax keyword jaiWhile while

syntax keyword jaiBreak break
syntax keyword jaiContinue continue

syntax keyword jaiDataType void string int float float32 float64 u8 u16 u32 u64 s8 s16 s32 s64 bool
syntax keyword jaiBool true false
syntax keyword jaiNull null

syntax keyword jaiReturn return
syntax keyword jaiDefer defer

syntax keyword jaiInline inline
syntax keyword jaiNoInline no_inline

syntax keyword jaiSOA SOA
syntax keyword jaiAOS AOS

syntax keyword jaiIt it
syntax keyword jaiItIndex it_index

syntax region jaiString start=/\v"/ skip=/\v\\./ end=/\v"/

syntax keyword jaiAutoCast xx

syntax match jaiFunction "\v<\w*>(\s*::\s*)@="
syntax match jaiDynamicFunction "\v<\w*(\s*:\=\s*\(.*\))@="

syntax match jaiTagNote "@\<\w\+\>" display

syntax match jaiClass "\v<[A-Z]\w+>" display
syntax match jaiConstant "\v<[A-Z0-9,_]+>" display

syntax match jaiInteger "\<\d\+\>" display
syntax match jaiFloat "\<[0-9][0-9_]*\(\.[0-9_]\+\)\?\%([eE][+-]\=[0-9_]\+\)\=" display
syntax match jaiHex "\<0x[0-9A-Fa-f]\+\>" display
syntax match jaiBinary "\<0b[0-9A-Fa-f]\+\>" display

syntax match jaiMacro "#\<\w\+\(,\S*\)\?" display

syntax match jaiTemplate "$\<\w\+\>"

syntax match jaiCommentNote "@\<\w\+\>" contained display
syntax match jaiLineComment "//.*" contains=jaiCommentNote
syntax region jaiBlockComment start=/\v\/\*/ end=/\v\*\// contains=jaiBlockComment, jaiCommentNote

syntax keyword jaiOperator operator
syntax match jaiNoInit "---"
syntax match jaiAutobake "$$\<\w\+\>" display

highlight def link jaiOperator Operator
highlight def link jaiNoInit Keyword
highlight def link jaiHereString String
highlight def link jaiRemove Keyword
highlight def link jaiCase Keyword

highlight def link jaiIt Keyword
highlight def link jaiItIndex Keyword
highlight def link jaiUsing Keyword
highlight def link jaiNew Keyword
highlight def link jaiCast Keyword
highlight def link jaiAutoCast Keyword
highlight def link jaiDelete Keyword
highlight def link jaiReturn Keyword
highlight def link jaiDefer Operator

highlight def link jaiInline Keyword
highlight def link jaiNoInline Keyword

highlight def link jaiBreak Keyword
highlight def link jaiContinue Keyword

highlight def link jaiString String

highlight def link jaiStruct Structure
highlight def link jaiUnion Structure
highlight def link jaiEnum Structure

highlight def link jaiFunction Function
highlight def link jaiDynamicFunction Function

highlight def link jaiMacro Macro
highlight def link jaiIf Conditional
highlight def link jaiIfx Conditional
highlight def link jaiThen Conditional
highlight def link jaiElse Conditional
highlight def link jaiFor Repeat
highlight def link jaiWhile Repeat

highlight def link jaiLineComment Comment
highlight def link jaiBlockComment Comment
highlight def link jaiCommentNote Todo

highlight def link jaiClass Type

highlight def link jaiTemplate Constant

highlight def link jaiTagNote Identifier
highlight def link jaiDataType Type
highlight def link jaiBool Boolean
highlight def link jaiConstant Constant
highlight def link jaiNull Type
highlight def link jaiInteger Number
highlight def link jaiFloat Float
highlight def link jaiHex Number
highlight def link jaiBinary Number

highlight def link jaiSOA Keyword
highlight def link jaiAOS Keyword

highlight jaiDataType guifg=#66d9ef

syntax match jaiOperatorAssign ":="
syntax match jaiOperatorDoubleColon "::"
syntax match jaiOperatorSet "="
syntax match jaiOperatorEquals "=="
syntax match jaiOperatorNotEquals "!="
syntax match jaiOperatorLessThan "<"
syntax match jaiOperatorGreaterThan ">"
syntax match jaiOperatorLessThanEquals "<="
syntax match jaiOperatorGreaterThanEquals ">="
syntax match jaiOperatorAnd "&&"
syntax match jaiOperatorOr "||"
syntax match jaiOperatorNot "!"
syntax match jaiOperatorBitwiseAnd "&"
syntax match jaiOperatorBitwiseOr "|"
syntax match jaiOperatorBitwiseXor "\^"
syntax match jaiOperatorBitwiseNot "\~"
syntax match jaiOperatorBitwiseShiftLeft "<<"
syntax match jaiOperatorBitwiseShiftRight ">>"
syntax match jaiOperatorAddAssign "+="
syntax match jaiOperatorSubtractAssign "-="
syntax match jaiOperatorMultiplyAssign "*="
syntax match jaiOperatorDivideAssign "/="
syntax match jaiOperatorModulusAssign "%="
syntax match jaiOperatorBitwiseAndAssign "&="
syntax match jaiOperatorBitwiseOrAssign "|="
syntax match jaiOperatorBitwiseXorAssign "^="
syntax match jaiOperatorArrow "->"
syntax match jaiColon "\<[A-Za-z0-9_]\+\s*\zs:\s*"
"
highlight def link jaiOperatorAssign Operator
highlight def link jaiOperatorDoubleColon Operator
highlight def link jaiOperatorSet Operator
highlight def link jaiOperatorEquals Operator
highlight def link jaiOperatorNotEquals Operator
highlight def link jaiOperatorLessThan Operator
highlight def link jaiOperatorGreaterThan Operator
highlight def link jaiOperatorLessThanEquals Operator
highlight def link jaiOperatorGreaterThanEquals Operator
highlight def link jaiOperatorAnd Operator
highlight def link jaiOperatorOr Operator
highlight def link jaiOperatorNot Operator
highlight def link jaiOperatorBitwiseAnd Operator
highlight def link jaiOperatorBitwiseOr Operator
highlight def link jaiOperatorBitwiseXor Operator
highlight def link jaiOperatorBitwiseNot Operator
highlight def link jaiOperatorBitwiseShiftLeft Operator
highlight def link jaiOperatorBitwiseShiftRight Operator
highlight def link jaiOperatorAddAssign Operator
highlight def link jaiOperatorSubtractAssign Operator
highlight def link jaiOperatorMultiplyAssign Operator
highlight def link jaiOperatorDivideAssign Operator
highlight def link jaiOperatorModulusAssign Operator
highlight def link jaiOperatorBitwiseAndAssign Operator
highlight def link jaiOperatorBitwiseOrAssign Operator
highlight def link jaiOperatorBitwiseXorAssign Operator
highlight def link jaiOperatorArrow Operator
highlight def link jaiColon Operator

let b:current_syntax = "jai"
syntax sync fromstart
