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

function botie(){

echo -ne '█████                     [33%]\r'
sleep 1
echo -ne '████████████             [66%]\r'
sleep 1
echo -ne '█████████████████████ [100%]\r'
echo -ne '\n'

#npm install discord.js --save
#npm install dotenv
#npm install --save discord-youtube-api
(cd /home/$(whoami)/bot; node bot.js)

}

echo "${red_color}${pattern}"


echo "Write 'start' to starting botie <3 ${reset_color}"

read answer

if [ $answer ] ; then
	botie
fi

