#!/bin/bash
# Produced by Nick Ma
# License: MIT.
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
echo -e "${YELLOW}==================================================================${NC}"
echo -e "${YELLOW}=======${RED} Welcome to Dictation Tool for IELTS Listening Test ${YELLOW}=======${NC}"
echo -e "${YELLOW}=======${RED}             Produced by Nick Ma, 2017              ${YELLOW}=======${NC}"
echo -e "${YELLOW}=======${RED}    This application ONLY works on Apple OS X       ${YELLOW}=======${NC}"
echo -e "${YELLOW}==================================================================${NC}"
wf=$1
sl=$2 || 2
ss=$3
if [ -z "$wf" ]; then
	echo -e "${RED}Error: You must specify a word list file.${NC}"
	exit
fi

if [ -z "$ss" ]; then
	`say Welcome to Dictation Tool for IELTS Listening Test`
	`say Produced by Nick Ma, 2017 `
	`say the dictation will be started in five seconds, please listen carefully because you won\'t listen to it a second time.`
	`say the time interval between 2 words is $sl seconds`
	`sleep 5`
fi
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo -n "Listen "

	`say $line`
	cdn=$sl
	while [[ $cdn -gt 0 ]]; do
		# echo $cdn
		echo -n '>'
		`sleep 1`
		((cdn=$cdn-1))
	done

    echo -e " Answer: ${GREEN}$line${NC}"
done < "$wf"
`sleep 3`
`say this is the end of dictation, now stop writting and check your answer based on the answers on your screen`
