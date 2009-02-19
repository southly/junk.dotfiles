#!/bin/sh
opt='-d'
host='http://ntp-b1.nict.go.jp/cgi-bin/ntp'
#if [ $# = 0 ]; then
#  echo '  wdate.sh [-s] host' 
#  exit 1
#fi
until [ $# = 0 ]; do
  case "$1" in
  [-]*)
    opt="$1";;
  *)
    host="$1";;
  esac
  shift
done
date "$opt" "`wget --spider -S $host 2>&1 1>/dev/null | grep -e 'Date:' | sed 's/^ *Date: *//'`" 
