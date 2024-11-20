
require('dotenv').config();
const dialogue= require ('../src/Dialogue.js');
const queries =require ('./Queries.js');
const m =require ('./Messageclass.js');

const {Client, IntentsBitField} = require('discord.js');
const { Database, OPEN_READONLY } = require('sqlite3');

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
//let testEmoji = ['🪑'];

client.on('messageCreate', async (msg) => {
    if(msg.author.bot) {
        return;
    }if (msg.content === 'OmegaHelp') {
     const reactedemoji =  await m.botanswer(msg,"test",ManualEmoji);
     if(ManualEmoji.includes(reactedemoji)){
        //const testEmoji = queries.EmojiFilter(queries.dbfunc('SELECT emoji FROM categories WHERE categoryEmoji = ?',reactedemoji,db));
       // const testEmoji =  queries.queryfunction( 'SELECT emoji FROM categories WHERE categoryEmoji = ?',queries.EmojiFilter,reactedemoji);
       const testEmoji = await queries.EmojiFilter3(reactedemoji); 
       const reactedemoji2 =  m.botanswer(msg,"test2",testEmoji);
     }
     else{
        msg.channel.send("error");
     }
    
    }
        

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
});

client.login(process.env.TOKEN);

