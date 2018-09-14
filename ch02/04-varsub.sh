#!/bin/bash

logfile="web.log"
echo "\${logfile} example: "
echo "logfile is $logfile"
echo
unset logfile

echo "\${logfile:-www.log} Example:"
echo " logfile is ${logfile:-www.log}."
echo " logfile is $logfile."
echo
unset logfile

echo "\${logfile:=inet.log} Example:"
echo " logfile is ${logfile:=inet.log}."
echo " logfile is $logfile."
echo
unset logfile

logfile="web.log"
echo "\${logfile:+The logfile variable is  set.} Example:"
echo "${logfile:+The logfile variable is set.}"
unset logfile
echo " The next line is blank bacause logfile has been unset."
echo
unset logfile

logfile="web.log"
echo "\${#logfile} Example:"
echo " There are ${#logfile} characters in '$logfile'."
echo
unset logfile

echo "\${logfile:?;Please Specify a logfile name!} Example:"
echo "${logfile:?;Please Specify a logfile name!}"
echo " logfile is $logfile."
