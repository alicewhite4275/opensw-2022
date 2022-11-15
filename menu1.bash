#!/bin/bash
echo 명령어 메뉴
cat << MENU
	d : day & time
	l : directory
	w : user
	q : quit
MENU
stop=0

while (($stop == 0))
do
	echo -n '? '
	read reply
	case $reply in
		"d") date;;
		"l") ls;;
		"w") who;;
		"q") stop=1;;
		*) echo 잘못된 선택;;
	esac
done
