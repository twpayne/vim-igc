" Vim syntax file
" Language:	IGC
" Maintainer:	Tom Payne <tom@tompayne.org>
" Last Change:	2010-02-21
" Version:	1.0

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn region igcA start="^A" end="$" keepend oneline transparent
syn region igcAA start="\%1c" end="\%2c" contained containedin=igcA
syn region igcATCC start="\%2c" end="\%5c" contained containedin=igcA
syn region igcAUID start="\%5c" end="$" contained containedin=igcA

syn region igcB start="^B" end="$" keepend oneline transparent
syn region igcBrest start="." end="$" contained containedin=igcB
syn region igcBB start="\%1c" end="\%2c" contained containedin=igcB
syn region igcBtimeHH start="\%2c" end="\%4c" contained containedin=igcB
syn region igcBtimeMM start="\%4c" end="\%6c" contained containedin=igcB
syn region igcBtimeSS start="\%6c" end="\%8c" contained containedin=igcB
syn region igcBlatDD start="\%8c" end="\%10c" contained containedin=igcB
syn region igcBlatMM start="\%10c" end="\%12c" contained containedin=igcB
syn region igcBlatmmm start="\%12c" end="\%15c" contained containedin=igcB
syn region igcBlatH start="\%15c" end="\%16c" contained containedin=igcB
syn region igcBlonDDD start="\%16c" end="\%19c" contained containedin=igcB
syn region igcBlonMM start="\%19c" end="\%21c" contained containedin=igcB
syn region igcBlonmmm start="\%21c" end="\%24c" contained containedin=igcB
syn region igcBlonH start="\%24c" end="\%25c" contained containedin=igcB
syn region igcBV start="\%25c" end="\%26c" contained containedin=igcB
syn region igcBPalt start="\%26c" end="\%31c" contained containedin=igcB
syn region igcBGalt start="\%31c" end="\%36c" contained containedin=igcB

syn region igcC start="^C" end="$" keepend oneline
syn region igcCC start="\%1c" end="\%2c" contained containedin=igcC
syn region igcClatDD start="\%2c" end="\%4c" contained containedin=igcC
syn region igcClatMM start="\%4c" end="\%6c" contained containedin=igcC
syn region igcClatSS start="\%6c" end="\%9c" contained containedin=igcC
syn region igcClatH start="\%9c" end="\%10c" contained containedin=igcC
syn region igcClonDDD start="\%10c" end="\%13c" contained containedin=igcC
syn region igcClonMM start="\%13c" end="\%15c" contained containedin=igcC
syn region igcClonSS start="\%15c" end="\%18c" contained containedin=igcC
syn region igcClonH start="\%18c" end="\%19c" contained containedin=igcC
syn region igcCrest start="\%19c" end="$" contained containedin=igcC

syn region igcG start="^G" end="$" keepend oneline
syn region igcGvalue start="." end="$" contained containedin=igcG
syn region igcGG start="\%1c" end="\%2c" contained containedin=igcG

syn region igcH start="^H" end="$" keepend oneline transparent
syn region igcHvalue start="." end="$" contained containedin=igcH
syn region igcHH start="\%1c" end="\%2c" contained containedin=igcH
syn region igcHdataSource start="\%2c" end="\%3c" contained containedin=igcH
syn region igcHrecordSubtype start="\%3c" end="\%6c" contained containedin=igcH
syn region igcHrecordSubtypeText start="\%6c" end=":" contained containedin=igcH

syn region igcHFDTE start="^HFDTE" end="$" keepend oneline transparent
syn region igcHFDTEH start="\%1c" end="\%2c" contained containedin=igcHFDTE
syn region igcHFDTEdataSource start="\%2c" end="\%3c" contained containedin=igcHFDTE
syn region igcHFDTErecordSubtype start="\%3c" end="\%6c" contained containedin=igcHFDTE
syn region igcHFDTEDDMMYY start="\%6c" end="\%12c" contained containedin=igcHFDTE

syn region igcI start="^I" end="$" keepend oneline transparent
syn region igcII start="\%1c" end="\%2c" contained containedin=igcI
syn region igcIvalue start="\%2c" end="$" contained containedin=igcI

syn region igcL start="^L" end="$" keepend oneline

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_igc_syntax_inits")
  if version < 508
    let did_igc_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink igc1 Statement
  HiLink igc2 Type
  HiLink igc3 Identifer
  HiLink igc4 Special

  HiLink igcAA PreProc
  HiLink igcATCC igc1
  HiLink igcAUID igc2

  HiLink igcBB PreProc
  HiLink igcBtimeHH igc1
  HiLink igcBtimeMM igc2
  HiLink igcBtimeSS igc3
  HiLink igcBlatDD igc1
  HiLink igcBlatMM igc2
  HiLink igcBlatmmm igc3
  HiLink igcBlatH igc4
  HiLink igcBlonDDD igc1
  HiLink igcBlonMM igc2
  HiLink igcBlonmmm igc3
  HiLink igcBlonH igc4
  HiLink igcBV igc3
  HiLink igcBPalt igc2
  HiLink igcBGalt igc1
  HiLink igcBrest Comment

  HiLink igcCC PreProc
  HiLink igcClatDD igc1
  HiLink igcClatMM igc2
  HiLink igcClatmmm igc3
  HiLink igcClatH igc4
  HiLink igcClonDDD igc1
  HiLink igcClonMM igc2
  HiLink igcClonmmm igc3
  HiLink igcClonH igc4
  HiLink igcCrest Comment

  HiLink igcGG PreProc
  HiLink igcGvalue Todo

  HiLink igcHH PreProc
  HiLink igcHdataSource igc1
  HiLink igcHrecordSubtype igc2
  HiLink igcHrecordSubtypeText Normal
  HiLink igcHvalue Constant

  HiLink igcHFDTEH PreProc
  HiLink igcHFDTEdataSource igc1
  HiLink igcHFDTErecordSubtype igc2
  HiLink igcHFDTEDDMMYY Constant

  HiLink igcII PreProc
  HiLink igcIvalue Normal

  HiLink igcL Comment

  delcommand HiLink
endif

let b:current_syntax = "igc"
