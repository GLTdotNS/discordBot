function botie() {
    require("dotenv").config();
    const YouTube = require("discord-youtube-api");
    const Discord = require("discord.js");
    const client = new Discord.Client({ intents: ["GUILDS", "GUILD_MESSAGES" , "GUILD_MEMBERS"] });
    const youtube = new YouTube(process.env.YTAPI);

    client.login(process.env.BOTTONKOV);

    client.on("ready", () => {
        const guild = client.guilds.cache.get(process.env.GUILDC);
        const members = guild.memberCount.toString();;
        client.channels.fetch(process.env.GUILDM)
            .then(channel => {
                channel.send(`Hello people!\nActive users are ${members}`)
            });
        console.log(`Logged in as ${client.user.tag}!`);
        console.log(guild.memberCount);

    });

    client.on("messageCreate", msg => {

        const prefixDelete = "!";
        const prefixSearch = "%";

        if (msg.content.toLowerCase().startsWith(prefixDelete + "cc")
            && msg.author.username === "adminName") {
            async function clear() {
                msg.delete();
                msg.channel.bulkDelete(100);
            }
            clear();
        }

        const uncensored = {
            //uncensored content
        }

        if (uncensored.hasOwnProperty(msg.content.toLowerCase())) {
            msg.delete();
            msg.channel.send("msg for attention");

        }


        const helloMsg = {
            //hello content
        }

        if (helloMsg.hasOwnProperty(msg.content.toLowerCase())) {
            msg.channel.send(`Hello, ${msg.author.username}`);

        }

        else if (msg.content.toLowerCase().startsWith(prefixSearch + "s")) {
            let song = '';
            for (let i = 2; i < msg.content.length; i++) {
                song += msg.content[i];
            }
            search(song);


            async function search(s) {

                const video = await youtube.searchVideos(`${s}`);
                const url = video.url.toString();
                msg.channel.send(url);

            }
        }

    });
}


botie();