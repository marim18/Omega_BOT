
require('dotenv').config();
const dialogue= require ('../src/Dialogue.js');
const queries =require ('./Queries.js');
const m =require ('./Messageclass.js');
var Datastore = require('nedb')
  , db2 = new Datastore({filename : 'db/omegadb.db'});

const {Client, IntentsBitField, Message} = require('discord.js');
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
var testEmoji = []; //idk why this is gray

client.on('messageCreate', async (msg) => {
    if(msg.author.bot) {
        return;
    }
    if (msg.content === 'OmegaHelp') {
     const reactedemoji =  await m.botanswer(msg,"test",ManualEmoji); //where it says test here i want dialogue variable
     var reactedemoji2; //idk why this is gray
     if(ManualEmoji.includes(reactedemoji)){ //checks if reply from user is in array

       queries.EmojiFilter3(reactedemoji) //lager array 2 som er under arrayet 
       .then((testEmoji) =>
        {
        console.log(testEmoji);

        return m.botanswer(msg, "test2", testEmoji)  //where it says test here i want dialogue variable
        .then((reactedemoji2) =>
        {
            console.log("Second Reacted Emoji:", reactedemoji2); 

            if( testEmoji.includes(reactedemoji2)) // handle user reaction 2
            {//from here on out it is greek for me
               return queries.EmojitoId(reactedemoji2).then(async (value)=>  //get id of emoji
                    {
                        const v = value;
                        console.log("enterd try "+v);
                       return await queries.filterfunc(v).then(async (Listmessage) => // filters out the titles of the ailments we want
                        {   const l = Listmessage;
                            console.log("entered filterfun "+Listmessage+l);
                           
                                return msg.channel.send("test"+Listmessage).then(async ()=> //send filtered out list. 
                                {
                                    var target =  await m.botreply(msg,"test4",Listmessage).then(async ()=>  //where it says test here i want dialogue variable
                                   // the above function is bad i have no idea what it does it is your code but i try to make it do what i want
                                   // the point is for it to wait for user reply a title and then we get the title
                                    { 
                                        await queries.articleopener(target); //prints article
                                    });

                                });
                            
                           
                        });
                    }
                );
            }

       });
          
       });
    }
    
    }
        
});

client.login(process.env.TOKEN);



/*
    if (msg.content === 'OmegaHelp') {
        const helpMessage = await msg.reply(
            "What seems to be the problem?\n\n" +
            "Comment the emoji that fits the area of the problem.\n\n" +
            
            "👕 for torso and back,\n" +
            "🦵 for glutes and below,\n" +
            "💆‍♂️ for neck pain or above,\n" +
            "🦾 for arm and wrist pain"
    );
    const ManualEmoji = ['👕', '🦵', '💆‍♂️', '🦾'];
    const filter = (reaction, user) => {
        return ManualEmoji.includes(reaction.emoji.name) && !user.bot;
    };

    await queries.botreaction(ManualEmoji,helpMessage);

    const collector = helpMessage.createReactionCollector({ filter,time: 60000 });
    collector.on('collect', async (reaction, user) => {
       
       console.log(`Collected reaction: ${reaction.emoji.name}`);
     //   queries.EmojitoId(reaction.emoji.name);
        console.log(reaction.emoji.name);
        const Emojiqueryresult =  queries.dbfunc('SELECT emoji FROM categories WHERE categoryEmoji = ?',reaction.emoji.name);
       
        const Detailedsearchmsg = await msg.reply( queries.DetailedSearchMessage(Emojiqueryresult))
        const Emojiarray = queries.EmojiFilter(Emojiqueryresult);
        console.log("Emojiarray"+ Emojiarray);
        
    
    },
    collector.on('end', collected => {
        msg.channel.send('Reaction time has ended.');
    }));
    
    filter = (reaction,user) =>{
            return Emojiarray.includes(reaction.emoji.name) && !user.bot;
        }
  
}
*/

    /* previous code:
    if (msg.content === 'OmegaHelp') {
        const helpMessage = await msg.reply(
            "What seems to be the problem?\n\n" +
            "Comment the emoji that fits the area of the problem.\n\n" +
            
            "👕 for torso and back,\n" +
            "🦵 for glutes and below,\n" +
            "💆‍♂️ for neck pain or above,\n" +
            "🦾 for arm and wrist pain"
    );
    

        await helpMessage.react('👕');
        await helpMessage.react('🦵');
        await helpMessage.react('💆‍♂️');
        await helpMessage.react('🦾');

        const filter = (reaction, user) => {
            return ['👕', '🦵', '💆‍♂️', '🦾'].includes(reaction.emoji.name) && !user.bot;
        };

        const collector = helpMessage.createReactionCollector({ filter, time: 60000 });

        
        collector.on('collect', async (reaction, user) => {
            if (reaction.emoji.name === '👕') {
                msg.channel.send(`${user.username} You have picked Torsou `);
                
                const TorsohelpMessage = await msg.reply('Lets be more Spesific.\n Is it on the front⬆️ or back⬇️?')
                
                await TorsohelpMessage.react('⬆️');
                await TorsohelpMessage.react('⬇️');

                const specificFilter = (reaction, user) => {
                    return ['⬆️', '⬇️'].includes(reaction.emoji.name) && !user.bot;
                };

                const specificCollector = TorsohelpMessage.createReactionCollector({ specificFilter, time: 60000 }); 

                specificCollector.on('collect', (specificReaction, specificUser) => {
                    if (specificReaction.emoji.name === '⬆️') {
                        msg.channel.send(`${specificUser.username} has chosen front torso.`);
                    } else if (specificReaction.emoji.name === '⬇️') {
                        msg.channel.send(`${specificUser.username} has chosen back torso.`);
                    }
                });

                specificCollector.on('end', () => {
                    msg.channel.send('Front/back selection time has ended.');
                });

            } 
            
            else if (reaction.emoji.name === '🦵') {
                msg.channel.send(`${user.username} has chosen glutes and below.`);
            
            } 
            
            else if (reaction.emoji.name === '💆‍♂️') {
                msg.channel.send(`${user.username} has chosen neck pain or above.`);
            
            } 
            
            else if (reaction.emoji.name === '🦾') {
              
                msg.channel.send(`${user.username} has chosen arm and wrist pain.`);
            
            }
        });

        collector.on('end', collected => {
            msg.channel.send('Reaction time has ended.');
        });
    }*/
