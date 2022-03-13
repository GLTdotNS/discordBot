#!/bin/bash

red_color=`tput setaf 1`
reset_color=`tput sgr0`
pattern=$(cat <<-END

██████╗ ██╗███████╗ ██████╗ ██████╗ ██████╗ ██████╗
██╔══██╗██║██╔════╝██╔════╝██╔═══██╗██╔══██╗██╔══██╗
██║  ██║██║███████╗██║     ██║   ██║██████╔╝██║  ██║
██║  ██║██║╚════██║██║     ██║   ██║██╔══██╗██║  ██║
██████╔╝██║███████║╚██████╗╚██████╔╝██║  ██║██████╔╝
╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝
██████╗  ██████╗ ████████╗
██╔══██╗██╔═══██╗╚══██╔══╝
██████╔╝██║   ██║   ██║
██╔══██╗██║   ██║   ██║
██████╔╝╚██████╔╝   ██║
╚═════╝  ╚═════╝    ╚═╝v1.2

END
)

function progress_bar(){

echo -ne '█████                     [33%]\r'
sleep 1
echo -ne '████████████             [66%]\r'
sleep 1
echo -ne '█████████████████████ [100%]\r'
echo -ne '\n'

}


function botie(){

#uncomment below for installing the packages
#npm install discord.js --save
#npm install dotenv
#npm install --save discord-youtube-api
(cd /home/$(whoami)/bot && gnome-terminal -- node bot.js)

}


echo "${red_color}${pattern}"
echo "Write 'start' to starting botie <3 ${reset_color}"

read answer


if [ $answer ] ; then
	progress_bar
	sleep 2
	botie
fi

