

async function botanswer(msg,dialogue1,ManualEmoji){  
        
        const helpMessage = await msg.reply(dialogue1);
        const filter = (reaction, user) => {
            return ManualEmoji.includes(reaction.emoji.name) && !user.bot;
        };
   

    await botreaction(ManualEmoji,helpMessage);
    return new Promise((resolve, reject) => {
    const collector = helpMessage.createReactionCollector({ filter,time: 60000 });
    collector.on('collect', async (reaction) => 
        {
            console.log(`Collected reaction: ${reaction.emoji.name}`);
            resolve(reaction.emoji.name);}
       )
       
    collector.on('end', collected => 
        {
            reject( msg.channel.send('Reaction time has ended.'));
        }
    ); 
});
}
function botreaction(emojilist,helpMessage){
    console.log("emojilist " + emojilist);
    for (let i = 0; i < emojilist.length; i++) {
        helpMessage.react(emojilist[i]);
        console.log(emojilist[i]);
    }/*
    emojilist.forEach((emoji)=>
    {
        helpMessage.react(emoji);
        console.log(emoji);
    });*/
}
module.exports = {
    botanswer,
    botreaction,
 }


    