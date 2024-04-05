#!/bin/bash
:; @ECHO() { :;}; CLS() { clear; }; CHCP() { ENC="$1"; }
@ECHO off
CHCP 1251
CLS

:; GOTO() { :; }; REM() { :; }
:; ECHO.() { echo $@ | iconv -f "CP$ENC"; }; PAUSE() { read; }; 
:; SET() { shift; ECHO. -n "${@#*=}"; read "${1%%=*}"; }
:; CALL() { eval "$(sed 's/%\(.*\)%/$\1/g' <<< "$1")" 2>&-; }

GOTO ;#start

:menu_1 (){
ECHO. Пункт первый
GOTO :EOF
:; }

:menu_2 (){
ECHO. Пункт второй
GOTO :EOF
:; }

:menu_3 (){
ECHO. Выход
exit
:; }


REM; while true; do

:;#start

SET /p opt=Введите цифру 1, 2 или 3 и нажми Enter:
CALL :menu_%opt%

GOTO ;#start

REM; done
