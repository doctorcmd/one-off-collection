#!/bin/bash

[ -z $(which tput 2>/dev/null) ] && { printf "%s\n" "tput not found"; exit 1; }

GRN=$(tput setaf 2)
YLW=$(tput setaf 3)
RED=$(tput setaf 1)
CLR=$(tput sgr0)

ANSWERS=(
"`printf "${GRN}●${CLR} Did you check dns"`"
"`printf "${GRN}●${CLR} It is decidedly so, its always dns"`"
"`printf "${GRN}●${CLR} Without a doubt dns"`"
"`printf "${GRN}●${CLR} Yes definitely dns is causing this issue"`"
"`printf "${GRN}●${CLR} Most likely dns"`"
"`printf "${GRN}●${CLR} dns"`"
"`printf "${GRN}●${CLR} Yes it's dns"`"
"`printf "${GRN}●${CLR} Signs point to yes it's dns"`"
"`printf "${YLW}●${CLR} Reply hazy might be caused by dns"`"
"`printf "${YLW}●${CLR} Ask again later, dns is down"`"
"`printf "${YLW}●${CLR} Better not tell you now but it's dns"`"
"`printf "${YLW}●${CLR} Cannot predict now but my guess is dns"`"
"`printf "${YLW}●${CLR} Ask again if it's dns"`"
"`printf "${RED}●${CLR} Dont count on it go check dns"`"
"`printf "${RED}●${CLR} My reply is no. But check dns"`"
"`printf "${RED}●${CLR} My sources say no its not an un-dns related issue "`"
"`printf "${RED}●${CLR} Outlook sucks, but check dns since it's dns"`"
"`printf "${RED}●${CLR} Very doubtful but it is always dns"`"
)

MOD=${#ANSWERS[*]}
INDEX=$(($RANDOM%$MOD))
W_CNT=$((${#ANSWERS[$INDEX]}-9))

printf $(tput clear)
tput cup $(($(tput lines)/2)) $((($(tput cols)/2)-($W_CNT/2)))
printf "${ANSWERS[$INDEX]}"
tput cup $(tput lines) 0
