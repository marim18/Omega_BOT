
require('dotenv').config();
const dialogue = require('../src/Dialogue.js');
const queries = require('./Queries.js');
const m = require('./Messageclass.js');


const { Client, IntentsBitField, Message, MessageType } = require('discord.js');
const { Database, OPEN_READONLY, EMPTY } = require('sqlite3');


const client = new Client({
    intents: [
        IntentsBitField.Flags.Guilds,
        IntentsBitField.Flags.GuildMembers,
        IntentsBitField.Flags.GuildMessages,
        IntentsBitField.Flags.MessageContent,
        IntentsBitField.Flags.GuildMessageReactions,
    ],
})

client.on('ready', (c) => {
    console.log(`✅ ${c.user.tag} is online`);
});
const sqlite3 = require('sqlite3').verbose();
db = new sqlite3.Database('db/omegadb.db');
const ManualEmoji = ['👕', '🦵', '💆‍♂️', '🦾'];
var testEmoji = []; 
var lm = [];

client.on('messageCreate', async (msg) => {
    if (msg.author.bot) {
        return;
    }
    if (msg.content === 'OmegaHelp') {
        
        const reactedemoji = await m.botanswer(msg, dialogue.dialogue1,
        ManualEmoji); 
        var reactedemoji2; 
        
        if (ManualEmoji.includes(reactedemoji)) { 
            queries.EmojiFilter3(reactedemoji) 
                .then((testEmoji) => {
                    console.log(testEmoji);

                    return m.botanswer(msg, "You have picked" + (reactedemoji) + "  " + (dialogue.EmojiDictionary[reactedemoji]), testEmoji)  //where it says test here i want dialogue variable
                        .then((reactedemoji2) => {
                            console.log("Second Reacted Emoji:", reactedemoji2);

                            if (testEmoji.includes(reactedemoji2)) 
                            {
                                return queries.EmojitoId(reactedemoji2).then(async (value) =>  
                                {
                                    const v = value;
                                    console.log("enterd try " + v);
                                    return await queries.filterfunc(v).then(async (Listmessage) => {
                                        const l = Listmessage;
                                        lm = l;
                                        console.log("entered filterfun " + Listmessage + l);

                                        return msg.channel.send('Here is a list of possibilities:' + Listmessage + ', Replay on prevous message to get more infomastion')



                                    });
                                }
                                );
                            }

                        });

                });
        }

    }
    
    
    if (msg.type === MessageType.Reply) {
        const original = await msg.fetchReference();
       
        if (original.author.id === client.user.id) {
           
            lm = lm.toString();
            lm = lm.replace(/^\s+|\s+$/g, '');
            msg.content= msg.content.replace(/^\s+|\s+$/g, '');
            console.log("'" + lm + "'" + " | " + "'" + msg.content + "'"); 
             if (lm.includes(msg.content)) {
            
                var target = msg.content;
                await msg.channel.send(await queries.articleopener(target)+'');
            }
            else{
                console.log("unkown"+ msg.content);
            }

        }
    }

});

client.login(process.env.TOKEN);


