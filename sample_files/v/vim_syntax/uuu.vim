" Vim syntax file
" Language:	NASM - The Netwide Assembler (v0.98)
" Maintainer:	Manuel M.H. Stol	<mmh.stol@a1.nl>
" Last Change:	2000-02-15
" Vim URL:	http://www.vim.org/lang.html
" NASM Home:	http://www.cryogen.com/Nasm/
" Orig. Maint.:	C. Laurence Gonsalves	<clgonsal@kami.com>
" Orig. URL:	http://www.cryogen.com/clgonsal/vim/syntax/nasm.vim

" To install:
" put this file in /usr/share/vim/vim57/syntax and add this line to synload.vim
" in the same directory:
"
" SynAu uuu
"
" around line 277, with all the other SynAu stuffs. Because there are many asm
" syntax, put this in your .vimrc to make it default:
"
" let asmsyntax="uuu"
"
" The command to turn on highlighting is ":syntax on"
"
" If you start your comments with ";;" a new ";;" will automaticly be inserted
" on each line. Cool stuff huh? I thought so...someday I'll get around to
" autoindent stuff.
"
" There are many things to configure. My .vimrc looks like this:
" 
"   " make uuu default
"   let asmsyntax="uuu"
"   " turn on syntax highlighting
"   syntax on
"   " Link the various registers to one name
"   hi link nasmGen08Register nasmRegister
"   hi link nasmGen16Register nasmRegister
"   hi link nasmGen32Register nasmRegister
"   hi link nasmSegRegister nasmRegister
"   hi link nasmFpuRegister nasmRegister
"   hi link nasmMmxRegister nasmRegister
"   hi link nasmCtrlRegister nasmRegister
"   
"   " highlight memory refrences
"   hi nasmMemReference ctermfg=red
"   " highlight those registers
"   hi nasmRegister ctermfg=white
"   " make the labels red, the default yellow looks like opcodes
"   hi Label ctermfg=red
"   
"   " map these keys to commands so I can turn highlighting off to scroll
"   map <F12> :syntax on <CR>
"   map <F11> :syntax off <CR>
" 


" Setup Syntax:
"  Clear old syntax settings
syn clear
"  Assembler syntax is case insensetive
syn case ignore


" Vim search and movement commands on identifers
"  Comments at start of a line inside which to skip search for indentifiers
set comments=s:;>,m:;;,ex:;<,:;;
set formatoptions+=r
"  Identifier Keyword characters (defines \k)
set iskeyword=@,48-57,#,$,.,?,@-@,_,~
"	  alpha, 0- 9,#,$,.,?,	@,_,~


" Comments:
syn region  nasmComment		start=";" keepend end="$" contains=@nasmGrpInComments
syn region  nasmSpecialComment	start="^\s*;>\s*$" keepend end="^\s*;<\s*$"
syn keyword nasmInCommentTodo	contained TODO FIXME XXX[XXXXX]
syn cluster nasmGrpInComments	contains=nasmInCommentTodo
syn cluster nasmGrpComments	contains=@nasmGrpInComments,nasmComment,nasmSpecialComment

" I like to highlight the commas cuz they are small:
syn match nasmDelimiter		","


" Label Identifiers:
"  in NASM: 'Everything is a Label'
"  Definition Label = label defined by %[i]define or %[i]assign
"  Identifier Label = label defined as first non-keyword on a line or %[i]macro
syn match   nasmLabelError	"$\=\(\d\+\K\|[#\.@]\|\$\$\k\)\k*\>"
syn match   nasmLabel		"\<\(\h\|?\)\k*\>"
syn match   nasmLabel		"[\$\~]\(\h\|?\)\k*\>"lc=1
syn match   nasmLabelDef	"^\s*\<\(\h\|?\)\k*\>:"
"  Labels starting with one or two '.' are special
syn match   nasmLocalLabel	"\<\.\(\w\|[#$?@~]\)\k*\>"
syn match   nasmLocalLabel	"\<\$\.\(\w\|[#$?@~]\)\k*\>"ms=s+1
syn match   nasmLocalLabelDef	"^\s*\<\.\(\w\|[#$?@~]\)\k*\>:"
if !exists("nasm_no_warn")
  syn match  nasmLabelWarn	"\<\~\=\$\=[_\.][_\.\~]*\>"
endif
if exists("nasm_loose_syntax")
  syn match   nasmSpecialLabel	"\<\.\.@\k\+\>"
  syn match   nasmSpecialLabel	"\<\$\.\.@\k\+\>"ms=s+1
  if !exists("nasm_no_warn")
    syn match	nasmLabelWarn	"\<\$\=\.\.@\(\d\|[#$\.@~]\)\k*\>"
  endif
  " disallow use of nasm internal label format
  syn match   nasmLabelError	"\<\$\=\.\.@\d\+\.\k*\>"
else
  syn match   nasmSpecialLabel	"\<\.\.@\(\h\|?\)\k*\>"
  syn match   nasmSpecialLabel	"\<\$\.\.@\(\h\|?\)\k*\>"ms=s+1
endif
"  Labels can be dereferenced with '$' to destinguish them from reserved words
syn match   nasmLabelError	"\<\$\K\k*\s*:"
syn match   nasmLabelError	"^\s*\$\K\k*\>"
syn match   nasmLabelError	"\<\~\s*\(\k*\s*:\|\$\=\.\k*\)"



" Constants:
syn match   nasmStringError	+["']+
syn match   nasmString		+\("[^"]\{-}"\|'[^']\{-}'\)+
syn match   nasmBinNumber	"\<[0-1]\+b\>"
syn match   nasmBinNumber	"\<\~[0-1]\+b\>"lc=1
syn match   nasmOctNumber	"\<\o\+q\>"
syn match   nasmOctNumber	"\<\~\o\+q\>"lc=1
syn match   nasmDecNumber	"-\=\<\d\+\>"
syn match   nasmDecNumber	"\<\~\d\+\>"lc=1
syn match   nasmHexNumber	"\<\(\d\x*h\|0x\x\+\|\$\d\x*\)\>"
syn match   nasmHexNumber	"\<\~\(\d\x*h\|0x\x\+\|\$\d\x*\)\>"lc=1
syn match   nasmFltNumber	"\<\d\+\.\d*\(e[+-]\=\d\+\)\=\>"
syn match   nasmNumberError	"\<\~\s*\d\+\.\d*\(e[+-]\=\d\+\)\=\>"



" Netwide Assembler Storage Directives:
"  Storage types
syn keyword nasmTypeError	DF EXTRN FWORD RESF TBYTE
syn keyword nasmType		FAR NEAR SHORT
syn keyword nasmType		BYTE WORD DWORD QWORD DQWORD HWORD DHWORD TWORD
syn keyword nasmType		CDECL FASTCALL NONE PASCAL STDCALL
syn keyword nasmStorage		DB DW DD DQ DDQ DT
syn keyword nasmStorage		RESB RESW RESD RESQ RESDQ REST
syn keyword nasmStorage		EXTERN GLOBAL COMMON
syn keyword nasmUuuMacros	DRP EXTERNFUNC GLOBALFUNC
"  Structured storage types
syn match   nasmTypeError	"\<\(AT\|I\=\(END\)\=\(STRUCT\=\|UNION\)\|I\=END\)\>"
syn match   nasmStructureLabel	contained "\<\(AT\|I\=\(END\)\=\(STRUCT\=\|UNION\)\|I\=END\)\>"
"   structures cannot be nested (yet) -> use: 'keepend' and 're='
syn cluster nasmGrpCntnStruc	contains=ALLBUT,@nasmGrpInComments,nasmMacroDef,@nasmGrpInMacros,@nasmGrpInPreCondits,nasmStructureDef,@nasmGrpInStrucs
syn region  nasmStructureDef	transparent matchgroup=nasmStructure keepend start="^\s*STRUCT\>"hs=e-5 end="^\s*ENDSTRUCT\>"re=e-9 contains=@nasmGrpCntnStruc
syn region  nasmStructureDef	transparent matchgroup=nasmStructure keepend start="^\s*STRUC\>"hs=e-4	end="^\s*ENDSTRUC\>"re=e-8  contains=@nasmGrpCntnStruc
syn region  nasmStructureDef	transparent matchgroup=nasmStructure keepend start="\<ISTRUCT\=\>" end="\<IEND\(STRUCT\=\)\=\>" contains=@nasmGrpCntnStruc,nasmInStructure
"   union types are not part of nasm (yet)
"syn region  nasmStructureDef	transparent matchgroup=nasmStructure keepend start="^\s*UNION\>"hs=e-4 end="^\s*ENDUNION\>"re=e-8 contains=@nasmGrpCntnStruc
"syn region  nasmStructureDef	transparent matchgroup=nasmStructure keepend start="\<IUNION\>" end="\<IEND\(UNION\)\=\>" contains=@nasmGrpCntnStruc,nasmInStructure
syn match   nasmInStructure	contained "^\s*AT\>"hs=e-1
syn cluster nasmGrpInStrucs	contains=nasmStructure,nasmInStructure,nasmStructureLabel



" PreProcessor Instructions:
" NAsm PreProcs start with %, but % is not a character
syn match   nasmPreProcError	"%{\=\(%\=\k\+\|%%\+\k*\|[+-]\=\d\+\)}\="
if exists("nasm_loose_syntax")
  syn cluster nasmGrpNxtCtx	contains=nasmStructureLabel,nasmLabel,nasmLocalLabel,nasmSpecialLabel,nasmLabelError,nasmPreProcError
else
  syn cluster nasmGrpNxtCtx	contains=nasmStructureLabel,nasmLabel,nasmLabelError,nasmPreProcError
endif

"  Multi-line macro
syn cluster nasmGrpCntnMacro	contains=ALLBUT,@nasmGrpInComments,nasmStructureDef,@nasmGrpInStrucs,nasmMacroDef,@nasmGrpPreCondits,nasmMemReference,nasmInMacPreCondit,nasmInMacStrucDef
syn region  nasmMacroDef	matchgroup=nasmMacro keepend start="^\s*%macro\>"hs=e-5 start="^\s*%imacro\>"hs=e-6 end="^\s*%endmacro\>"re=e-9 contains=@nasmGrpCntnMacro,nasmInMacStrucDef
if exists("nasm_loose_syntax")
  syn match  nasmInMacLabel	contained "%\(%\k\+\>\|{%\k\+}\)"
  syn match  nasmInMacLabel	contained "%\($\+\(\w\|[#\.?@~]\)\k*\>\|{$\+\(\w\|[#\.?@~]\)\k*}\)"
  syn match  nasmInMacPreProc	contained "^\s*%\(push\|repl\)\>"hs=e-4 skipwhite nextgroup=nasmStructureLabel,nasmLabel,nasmInMacParam,nasmLocalLabel,nasmSpecialLabel,nasmLabelError,nasmPreProcError
  if !exists("nasm_no_warn")
    syn match nasmInMacLblWarn	contained "%\(%[$\.]\k*\>\|{%[$\.]\k*}\)"
    syn match nasmInMacLblWarn	contained "%\($\+\(\d\|[#\.@~]\)\k*\|{\$\+\(\d\|[#\.@~]\)\k*}\)"
    hi link nasmInMacCatLabel	nasmInMacLblWarn
  else
    hi link nasmInMacCatLabel	nasmInMacLabel
  endif
else
  syn match  nasmInMacLabel	contained "%\(%\(\w\|[#?@~]\)\k*\>\|{%\(\w\|[#?@~]\)\k*}\)"
  syn match  nasmInMacLabel	contained "%\($\+\(\h\|?\)\k*\>\|{$\+\(\h\|?\)\k*}\)"
  hi link nasmInMacCatLabel	nasmLabelError
endif
syn match   nasmInMacCatLabel	contained "\d\K\k*"lc=1
syn match   nasmInMacLabel	contained "\d}\k\+"lc=2
if !exists("nasm_no_warn")
  syn match  nasmInMacLblWarn	contained "%\(\($\+\|%\)[_~][._~]*\>\|{\($\+\|%\)[_~][._~]*}\)"
endif
syn match   nasmInMacPreProc	contained "^\s*%pop\>"hs=e-3
syn match   nasmInMacPreProc	contained "^\s*%\(push\|repl\)\>"hs=e-4 skipwhite nextgroup=@nasmGrpNxtCtx
"   structures cannot be nested (yet) -> use: 'keepend' and 're='
syn region  nasmInMacStrucDef	contained transparent matchgroup=nasmStructure keepend start="^\s*STRUCT\>"hs=e-5 end="^\s*ENDSTRUCT\>"re=e-9 contains=@nasmGrpCntnMacro
syn region  nasmInMacStrucDef	contained transparent matchgroup=nasmStructure keepend start="^\s*STRUC\>"hs=e-4  end="^\s*ENDSTRUC\>"re=e-8  contains=@nasmGrpCntnMacro
syn region  nasmInMacStrucDef	contained transparent matchgroup=nasmStructure keepend start="\<ISTRUCT\=\>" end="\<IEND\(STRUCT\=\)\=\>" contains=@nasmGrpCntnMacro,nasmInStructure
"   union types are not part of nasm (yet)
"syn region  nasmInMacStrucDef	contained transparent matchgroup=nasmStructure keepend start="^\s*UNION\>"hs=e-4 end="^\s*ENDUNION\>"re=e-8 contains=@nasmGrpCntnMacro
"syn region  nasmInMacStrucDef	contained transparent matchgroup=nasmStructure keepend start="\<IUNION\>" end="\<IEND\(UNION\)\=\>" contains=@nasmGrpCntnMacro,nasmInStructure
syn region  nasmInMacPreConDef	contained transparent matchgroup=nasmInMacPreCondit start="^\s*%ifnidni\>"hs=e-7 start="^\s*%if\(idni\|n\(ctx\|def\|idn\|num\|str\)\)\>"hs=e-6 start="^\s*%if\(ctx\|def\|idn\|nid\|num\|str\)\>"hs=e-5 start="^\s*%ifid\>"hs=e-4 start="^\s*%if\>"hs=e-2 end="%endif\>" contains=@nasmGrpCntnMacro,nasmInMacPreCondit,nasmInPreCondit
syn match   nasmInMacPreCondit	contained transparent "ctx\s"lc=3 skipwhite nextgroup=@nasmGrpNxtCtx
syn match   nasmInMacPreCondit	contained "^\s*%elifctx\>"hs=e-7 skipwhite nextgroup=@nasmGrpNxtCtx
syn match   nasmInMacPreCondit	contained "^\s*%elifnctx\>"hs=e-8 skipwhite nextgroup=@nasmGrpNxtCtx
syn match   nasmInMacParamNum	contained "\<\d\+\.list\>"me=e-5
syn match   nasmInMacParamNum	contained "\<\d\+\.nolist\>"me=e-7
syn match   nasmInMacDirective	contained "\.\(no\)\=list\>"
syn match   nasmInMacMacro	contained transparent "macro\s"lc=5 skipwhite nextgroup=nasmStructureLabel
syn match   nasmInMacMacro	contained "^\s*%rotate\>"hs=e-6
syn match   nasmInMacParam	contained "%\([+-]\=\d\+\|{[+-]\=\d\+}\)"
"   nasm conditional macro operands/arguments
"   Todo: check feasebility; add too nasmGrpInMacros, etc.
"syn match   nasmInMacCond	contained "\<\(N\=\([ABGL]E\=\|[CEOSZ]\)\|P[EO]\=\)\>"
syn cluster nasmGrpInMacros	contains=nasmMacro,nasmInMacMacro,nasmInMacParam,nasmInMacParamNum,nasmInMacDirective,nasmInMacLabel,nasmInMacLblWarn,nasmInMacMemRef,nasmInMacPreConDef,nasmInMacPreCondit,nasmInMacPreProc,nasmInMacStrucDef

"   Context pre-procs that are better used inside a macro
if exists("nasm_ctx_outside_macro")
  syn region nasmPreConditDef	transparent matchgroup=nasmCtxPreCondit start="^\s*%ifnctx\>"hs=e-6 start="^\s*%ifctx\>"hs=e-5 end="%endif\>" contains=@nasmGrpCntnPreCon
  syn match  nasmCtxPreProc	"^\s*%pop\>"hs=e-3
  if exists("nasm_loose_syntax")
    syn match	nasmCtxLocLabel	"%$\+\(\w\|[#\.?@~]\)\k*\>"
  else
    syn match	nasmCtxLocLabel	"%$\+\(\h\|?\)\k*\>"
  endif
  syn match nasmCtxPreProc	"^\s*%\(push\|repl\)\>"hs=e-4 skipwhite nextgroup=@nasmGrpNxtCtx
  syn match nasmCtxPreCondit	contained transparent "ctx\s"lc=3 skipwhite nextgroup=@nasmGrpNxtCtx
  syn match nasmCtxPreCondit	contained "^\s*%elifctx\>"hs=e-7 skipwhite nextgroup=@nasmGrpNxtCtx
  syn match nasmCtxPreCondit	contained "^\s*%elifnctx\>"hs=e-8 skipwhite nextgroup=@nasmGrpNxtCtx
  if exists("nasm_no_warn")
    hi link nasmCtxPreCondit	nasmPreCondit
    hi link nasmCtxPreProc	nasmPreProc
    hi link nasmCtxLocLabel	nasmLocalLabel
  else
    hi link nasmCtxPreCondit	nasmPreProcWarn
    hi link nasmCtxPreProc	nasmPreProcWarn
    hi link nasmCtxLocLabel	nasmLabelWarn
  endif
endif

"  Conditional assembly
syn cluster nasmGrpCntnPreCon	contains=ALLBUT,@nasmGrpInComments,@nasmGrpInMacros,@nasmGrpInStrucs
syn region  nasmPreConditDef	transparent matchgroup=nasmPreCondit start="^\s*%ifnidni\>"hs=e-7 start="^\s*%if\(idni\|n\(def\|idn\|num\|str\)\)\>"hs=e-6 start="^\s*%if\(def\|idn\|nid\|num\|str\)\>"hs=e-5 start="^\s*%ifid\>"hs=e-4 start="^\s*%if\>"hs=e-2 end="%endif\>" contains=@nasmGrpCntnPreCon
syn match   nasmInPreCondit	contained "^\s*%el\(if\|se\)\>"hs=e-4
syn match   nasmInPreCondit	contained "^\s*%elifid\>"hs=e-6
syn match   nasmInPreCondit	contained "^\s*%elif\(def\|idn\|nid\|num\|str\)\>"hs=e-7
syn match   nasmInPreCondit	contained "^\s*%elif\(n\(def\|idn\|num\|str\)\|idni\)\>"hs=e-8
syn match   nasmInPreCondit	contained "^\s*%elifnidni\>"hs=e-9
syn cluster nasmGrpInPreCondits	contains=nasmPreCondit,nasmInPreCondit,nasmCtxPreCondit
syn cluster nasmGrpPreCondits	contains=nasmPreConditDef,@nasmGrpInPreCondits,nasmCtxPreProc,nasmCtxLocLabel

"  Other pre-processor statements
syn match   nasmPreProc		"^\s*%rep\>"hs=e-3
syn match   nasmPreProc		"^\s*%line\>"hs=e-4
syn match   nasmPreProc		"^\s*%\(clear\|error\)\>"hs=e-5
syn match   nasmPreProc		"^\s*%endrep\>"hs=e-6
syn match   nasmPreProc		"^\s*%exitrep\>"hs=e-7
syn match   nasmDefine		"^\s*%undef\>"hs=e-5
syn match   nasmDefine		"^\s*%\(assign\|define\)\>"hs=e-6
syn match   nasmDefine		"^\s*%i\(assign\|define\)\>"hs=e-7
syn match   nasmInclude		"^\s*%include\>"hs=e-7

"  Multiple pre-processor instructions on single line detection (obsolete)
"syn match   nasmPreProcError	+^\s*\([^\t "%';][^"%';]*\|[^\t "';][^"%';]\+\)%\a\+\>+
syn cluster nasmGrpPreProcs	contains=nasmMacroDef,@nasmGrpInMacros,@nasmGrpPreCondits,nasmPreProc,nasmDefine,nasmInclude,nasmPreProcWarn,nasmPreProcError



" Register Identifiers:
"  Register operands:
syn match   nasmGen08Register	"\<[A-D][HL]\>"
syn match   nasmGen16Register	"\<\([A-D]X\|[DS]I\|[BS]P\)\>"
syn match   nasmGen32Register	"\<E\([A-D]X\|[DS]I\|[BS]P\)\>"
syn match   nasmSegRegister	"\<[C-GS]S\>"
syn match   nasmSpcRegister	"\<E\=IP\>"
syn match   nasmFpuRegister	"\<ST\o\>"
syn match   nasmMmxRegister	"\<MM\o\>"
syn match   nasmCtrlRegister	"\<CR\o\>"
syn match   nasmDebugRegister	"\<DR\o\>"
syn match   nasmTestRegister	"\<TR\o\>"
syn match   nasmRegisterError	"\<\(CR[15-9]\|DR[4-58-9]\|TR[0-28-9]\)\>"
syn match   nasmRegisterError	"\<ST\((\d)\|[8-9]\>\)"
syn match   nasmRegisterError	"\<E\([A-D][HL]\|[C-GS]S\)\>"
"  Memory reference operand (address):
syn match   nasmMemRefError	"[\[\]]"
syn cluster nasmGrpCntnMemRef	contains=ALLBUT,@nasmGrpComments,@nasmGrpPreProcs,@nasmGrpInStrucs,nasmMemReference,nasmMemRefError
syn match   nasmInMacMemRef	contained "\[[^;\[\]]\{-}\]" contains=@nasmGrpCntnMemRef,nasmPreProcError,nasmInMacLabel,nasmInMacLblWarn,nasmInMacParam
syn match   nasmMemReference	"\[[^;\[\]]\{-}\]" contains=@nasmGrpCntnMemRef,nasmPreProcError,nasmCtxLocLabel



" Netwide Assembler Directives:
"  Compilation constants
syn keyword nasmConstant	__FILE__ __LINE__ __NASM_MAJOR__ __NASM_MINOR__
syn keyword nasmConstant	__BITS__ __FORMAT__
"  Instruction modifiers
syn match   nasmInstructnError	"\<TO\>"
syn match   nasmInstrModifier	"\(^\|:\)\s*[C-GS]S\>"ms=e-1
syn keyword nasmInstrModifier	A16 A32 O16 O32
syn match   nasmInstrModifier	"\<F\(ADD\|MUL\|\(DIV\|SUB\)R\=\)\s\+TO\>"lc=5,ms=e-1
"   the 'to' keyword is not allowed for fpu-pop instructions (yet)
"syn match   nasmInstrModifier	"\<F\(ADD\|MUL\|\(DIV\|SUB\)R\=\)P\s\+TO\>"lc=6,ms=e-1
"  NAsm directives
syn keyword nasmRepeat		TIMES
syn keyword nasmDirective	ALIGN[B] INCBIN EQU NOSPLIT SPLIT
syn keyword nasmDirective	ABSOLUTE BITS SECTION SEGMENT
syn keyword nasmDirective	ENDSECTION ENDSEGMENT
syn keyword nasmDirective	__SECT__
"  Macro created standard directives: (requires %include)
syn case match
syn keyword nasmStdDirective	ENDPROC EPILOGUE LOCALS PROC PROLOGUE USES
syn keyword nasmStdDirective	ENDIF ELSE ELIF ELSIF IF
"syn keyword nasmStdDirective	BREAK CASE DEFAULT ENDSWITCH SWITCH
"syn keyword nasmStdDirective	CASE OF ENDCASE
syn keyword nasmStdDirective	DO ENDFOR ENDWHILE FOR REPEAT UNTIL WHILE EXIT
syn case ignore
"  Format specific directives: (all formats)
"  (excluded: extension directives to section, global, common and extern)
syn keyword nasmFmtDirective	ORG
syn keyword nasmFmtDirective	EXPORT IMPORT GROUP UPPERCASE SEG WRT
syn keyword nasmFmtDirective	LIBRARY
syn case match
syn keyword nasmFmtDirective	_GLOBAL_OFFSET_TABLE_ __GLOBAL_OFFSET_TABLE_
syn keyword nasmFmtDirective	..start ..got ..gotoff ..gotpc ..plt ..sym
syn case ignore



" Standard Instructions:
syn match   nasmInstructnError	"\<\(F\=CMOV\|SET\)N\=\a\{0,2}\>"
syn keyword nasmInstructnError	CMPS MOVS LCS LODS STOS XLAT
syn match   nasmStdInstruction	"\<MOV\>"
syn match   nasmInstructnError	"\<MOV\s[^,;]*\<CS\>"
syn match   nasmStdInstruction	"\<\(CMOV\|J\|SET\)\(N\=\([ABGL]E\=\|[CEOSZ]\)\|P[EO]\=\)\>"
syn match   nasmStdInstruction	"\<POP\>"
syn keyword nasmStdInstruction	AAA AAD AAM AAS ADC ADD AND
syn keyword nasmStdInstruction	BOUND BSF BSR BSWAP BT[C] BTR BTS
syn keyword nasmStdInstruction	CALL CBW CDQ CLC CLD CMC CMP CMPSB CMPSD CMPSW
syn keyword nasmStdInstruction	CMPXCHG CMPXCHG8B CPUID CWD[E]
syn keyword nasmStdInstruction	DAA DAS DEC DIV ENTER
syn keyword nasmStdInstruction	IDIV IMUL INC INT[O] IRET[D] IRETW
syn keyword nasmStdInstruction	JCXZ JECXZ JMP
syn keyword nasmStdInstruction	LAHF LDS LEA LEAVE LES LFS LGS LODSB LODSD
syn keyword nasmStdInstruction	LODSW LOOP[E] LOOPNE LOOPNZ LOOPZ LSS
syn keyword nasmStdInstruction	MOVSB MOVSD MOVSW MOVSX MOVZX MUL NEG NOP NOT
syn keyword nasmStdInstruction	OR POPA[D] POPAW POPF[D] POPFW
syn keyword nasmStdInstruction	PUSH[AD] PUSHAW PUSHF[D] PUSHFW
syn keyword nasmStdInstruction	RCL RCR RETF RET[N] ROL ROR
syn keyword nasmStdInstruction	SAHF SAL SAR SBB SCASB SCASD SCASW
syn keyword nasmStdInstruction	SHL[D] SHR[D] STC STD STOSB STOSD STOSW SUB
syn keyword nasmStdInstruction	TEST XADD XCHG XLATB XOR


" System Instructions: (usually privileged)
"  Verification of pointer parameters
syn keyword nasmSysInstruction	ARPL LAR LSL VERR VERW
"  Addressing descriptor tables
syn keyword nasmSysInstruction	LLDT SLDT LGDT SGDT
"  Multitasking
syn keyword nasmSysInstruction	LTR STR
"  Coprocessing and Multiprocessing (requires fpu and multiple cpu's resp.)
syn keyword nasmSysInstruction	CLTS LOCK WAIT
"  Input and Output
syn keyword nasmInstructnError	INS OUTS
syn keyword nasmSysInstruction	IN INSB INSW INSD OUT OUTSB OUTSB OUTSW OUTSD
"  Interrupt control
syn keyword nasmSysInstruction	CLI STI LIDT SIDT
"  System control
syn match   nasmSysInstruction	"\<MOV\s[^;]\{-}\<CR\o\>"me=s+3
syn keyword nasmSysInstruction	HLT INVD LMSW
syn keyword nasmSseInstruction	PREFETCHT0 PREFETCHT1 PREFETCHT2 PREFETCHNTA
syn keyword nasmSseInstruction	RSM SFENCE SMSW SYSENTER SYSEXIT UD2 WBINVD
"  TLB (Translation Lookahead Buffer) testing
syn match   nasmSysInstruction	"\<MOV\s[^;]\{-}\<TR\o\>"me=s+3
syn keyword nasmSysInstruction	INVLPG

" Debugging Instructions: (privileged)
syn match   nasmDbgInstruction	"\<MOV\s[^;]\{-}\<DR\o\>"me=s+3
syn keyword nasmDbgInstruction	INT1 INT3 RDMSR RDTSC RDPMC WRMSR


" Floating Point Instructions: (requires FPU)
syn match   nasmFpuInstruction	"\<FCMOV\(N\=\([AB]E\=\|[EUZ]\)\|P[EO]\=\)\>"
syn keyword nasmFpuInstruction	F2XM1 FABS FADD[P] FBLD FBSTP
syn keyword nasmFpuInstruction	FCHS FCLEX FCOM[IP] FCOMP[P] FCOS
syn keyword nasmFpuInstruction	FDECSTP FDISI FDIV[P] FDIVR[P] FENI FFREE
syn keyword nasmFpuInstruction	FIADD FICOM[P] FIDIV[R] FILD
syn keyword nasmFpuInstruction	FIMUL FINCSTP FINIT FIST[P] FISUB[R]
syn keyword nasmFpuInstruction	FLD[1] FLDCW FLDENV FLDL2E FLDL2T FLDLG2
syn keyword nasmFpuInstruction	FLDLN2 FLDPI FLDZ FMUL[P]
syn keyword nasmFpuInstruction	FNCLEX FNDISI FNENI FNINIT FNOP FNSAVE
syn keyword nasmFpuInstruction	FNSTCW FNSTENV FNSTSW FNSTSW
syn keyword nasmFpuInstruction	FPATAN FPREM[1] FPTAN FRNDINT FRSTOR
syn keyword nasmFpuInstruction	FSAVE FSCALE FSETPM FSIN FSINCOS FSQRT
syn keyword nasmFpuInstruction	FSTCW FSTENV FST[P] FSTSW FSUB[P] FSUBR[P]
syn keyword nasmFpuInstruction	FTST FUCOM[IP] FUCOMP[P]
syn keyword nasmFpuInstruction	FXAM FXCH FXTRACT FYL2X FYL2XP1


" Multi Media Xtension Packed Instructions: (requires MMX unit)
"  Standard MMX instructions: (requires MMX1 unit)
syn match   nasmInstructnError	"\<P\(ADD\|SUB\)U\=S\=[DQ]\=\>"
syn match   nasmInstructnError	"\<PCMP\a\{0,2}[BDWQ]\=\>"
syn keyword nasmMmxInstruction	EMMS MOVD MOVQ
syn keyword nasmMmxInstruction	PACKSSDW PACKSSWB PACKUSWB PADDB PADDD PADDW
syn keyword nasmMmxInstruction	PADDSB PADDSW PADDUSB PADDUSW PAND[N]
syn keyword nasmMmxInstruction	PCMPEQB PCMPEQD PCMPEQW PCMPGTB PCMPGTD PCMPGTW
syn keyword nasmMmxInstruction	PMACHRIW PMADDWD PMULHW PMULLW POR
syn keyword nasmMmxInstruction	PSLLD PSLLQ PSLLW PSRAD PSRAW PSRLD PSRLQ PSRLW
syn keyword nasmMmxInstruction	PSUBB PSUBD PSUBW PSUBSB PSUBSW PSUBUSB PSUBUSW
syn keyword nasmMmxInstruction	PUNPCKHBW PUNPCKHDQ PUNPCKHWD
syn keyword nasmMmxInstruction	PUNPCKLBW PUNPCKLDQ PUNPCKLWD PXOR
"  Extended MMX instructions: (requires MMX2/SSE unit)
syn keyword nasmMmxInstruction	MASKMOVQ MOVNTQ
syn keyword nasmMmxInstruction	PAVGB PAVGW PEXTRW PINSRW PMAXSW PMAXUB
syn keyword nasmMmxInstruction	PMINSW PMINUB PMOVMSKB PMULHUW PSADBW PSHUFW


" Streaming SIMD Extension Packed Instructions: (requires SSE unit)
syn match   nasmInstructnError	"\<CMP\a\{1,5}[PS]S\>"
syn match   nasmSseInstruction	"\<CMP\(N\=\(EQ\|L[ET]\)\|\(UN\)\=ORD\)\=[PS]S\>"
syn keyword nasmSseInstruction	ADDPS ADDSS ANDNPS ANDPS
syn keyword nasmSseInstruction	COMISS CVTPI2PS CVTPS2PI
syn keyword nasmSseInstruction	CVTSI2SS CVTSS2SI CVTTPS2PI CVTTSS2SI
syn keyword nasmSseInstruction	DIVPS DIVSS FXRSTOR FXSAVE LDMXCSR
syn keyword nasmSseInstruction	MAXPS MAXSS MINPS MINSS MOVAPS MOVHLPS MOVHPS
syn keyword nasmSseInstruction	MOVLHPS MOVLPS MOVMSKPS MOVNTPS MOVSS MOVUPS
syn keyword nasmSseInstruction	MULPS MULSS
syn keyword nasmSseInstruction	ORPS RCPPS RCPSS RSQRTPS RSQRTSS
syn keyword nasmSseInstruction	SHUFPS SQRTPS SQRTSS STMXCSR SUBPS SUBSS
syn keyword nasmSseInstruction	UCOMISS UNPCKHPS UNPCKLPS XORPS


" Three Dimensional Now Packed Instructions: (requires 3DNow! unit)
syn keyword nasmNowInstruction	FEMMS PAVGUSB PF2ID PFACC PFADD PFCMPEQ PFCMPGE
syn keyword nasmNowInstruction	PFCMPGT PFMAX PFMIN PFMUL PFRCP PFRCPIT1
syn keyword nasmNowInstruction	PFRCPIT2 PFRSQIT1 PFRSQRT PFSUB[R] PI2FD
syn keyword nasmNowInstruction	PMULHRWA PREFETCH[W]


" Vendor Specific Instructions:
"  Cyrix instructions (requires Cyrix processor)
syn keyword nasmCrxInstruction	PADDSIW PAVEB PDISTIB PMAGW PMULHRW[C] PMULHRIW
syn keyword nasmCrxInstruction	PMVGEZB PMVLZB PMVNZB PMVZB PSUBSIW
syn keyword nasmCrxInstruction	RDSHR RSDC RSLDT SMINT SMINTOLD SVDC SVLDT SVTS
syn keyword nasmCrxInstruction	WRSHR
"  AMD instructions (requires AMD processor)
syn keyword nasmAmdInstruction	SYSCALL SYSRET


" Undocumented Instructions:
syn match   nasmUndInstruction	"\<POP\s[^;]*\<CS\>"me=s+3
syn keyword nasmUndInstruction	CMPXCHG486 IBTS ICEBP INT01 INT03 LOADALL
syn keyword nasmUndInstruction	LOADALL286 LOADALL386 SALC SMI UD1 UMOV XBTS



" Synchronize Syntax:
syn sync clear
syn sync minlines=50		"for multiple %if region nesting
syn sync match	nasmSync	grouphere nasmMacroDef	"^\s*%i\=macro\>"me=s-1
syn sync match	nasmSync	grouphere NONE		"^\s*%endmacro\>"



if !exists("did_nasm_syntax_inits")
  let did_nasm_syntax_inits = 1

  " Sub Links:
  hi link nasmInMacDirective	nasmDirective
  hi link nasmInMacLabel	nasmLocalLabel
  hi link nasmInMacLblWarn	nasmLabelWarn
  hi link nasmInMacMacro	nasmMacro
  hi link nasmInMacParam	nasmMacro
  hi link nasmInMacParamNum	nasmDecNumber
  hi link nasmInMacPreCondit	nasmPreCondit
  hi link nasmInMacPreProc	nasmPreProc
  hi link nasmInPreCondit	nasmPreCondit
  hi link nasmInStructure	nasmStructure
  hi link nasmStructureLabel	nasmStructure


  " Comment Group:
  hi link nasmComment		Comment
  hi link nasmSpecialComment	SpecialComment
  hi link nasmInCommentTodo	Todo

  " Constant Group:
  hi link nasmString		String
  hi link nasmStringError	Error
  hi link nasmBinNumber		Number
  hi link nasmOctNumber		Number
  hi link nasmDecNumber		Number
  hi link nasmHexNumber		Number
  hi link nasmFltNumber		Float
  hi link nasmNumberError	Error

  " Identifier Group:
  " hi link nasmLabel		Identifier
  " hi link nasmLocalLabel	Identifier
  hi link nasmSpecialLabel	Special
  hi link nasmLabelError	Error
  hi link nasmLabelWarn		Todo

  " Label Definitions:
  hi link nasmLabelDef		Label
  hi link nasmLocalLabelDef	Label

  " PreProc Group:
  hi link nasmPreProc		PreProc
  hi link nasmUuuMacros		PreProc
  hi link nasmDefine		Define
  hi link nasmInclude		Include
  hi link nasmMacro		Macro
  hi link nasmPreCondit		PreCondit
  hi link nasmPreProcError	Error
  hi link nasmPreProcWarn	Todo

  " Type Group:
  hi link nasmType		Type
  hi link nasmStorage		StorageClass
  hi link nasmStructure		Structure
  hi link nasmTypeError		Error

  " Directive Group:
  hi link nasmConstant		Constant
  hi link nasmInstrModifier	Operator
  hi link nasmRepeat		Repeat
  hi link nasmDirective		Keyword
  hi link nasmStdDirective	Operator
  hi link nasmFmtDirective	Keyword

  " Register Group:
  hi link nasmCtrlRegister	Special
  hi link nasmDebugRegister	Debug
  hi link nasmTestRegister	Special
  hi link nasmRegisterError	Error
  hi link nasmMemRefError	Error

  " Instruction Group:
  hi link nasmStdInstruction	Statement
  hi link nasmSysInstruction	Statement
  hi link nasmDbgInstruction	Debug
  hi link nasmFpuInstruction	Statement
  hi link nasmMmxInstruction	Statement
  hi link nasmSseInstruction	Statement
  hi link nasmNowInstruction	Statement
  hi link nasmAmdInstruction	Special
  hi link nasmCrxInstruction	Special
  hi link nasmUndInstruction	Todo
  hi link nasmInstructnError	Error

  " Other Stuff:
  hi link nasmDelimiter		Delimiter

endif

let b:current_syntax = "nasm"

" vim:ts=8 sw=4
