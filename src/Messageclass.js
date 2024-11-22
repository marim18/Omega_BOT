

async function botanswer(msg, dialogue1, ManualEmoji) {  
    // Send the initial help message
    const helpMessage = await msg.reply(dialogue1);

    // Reaction filter function
    const filter = (reaction, user) => {
        return ManualEmoji.includes(reaction.emoji.name) && !user.bot;
    };

    // React with emojis
    await botreaction(ManualEmoji, helpMessage);

    // Return a Promise that resolves with the emoji selected
    
    return new Promise((resolve, reject) => {
        // Create reaction collector with the filter
        const collector = helpMessage.createReactionCollector({ filter, time: 60000 });

        collector.on('collect', async (reaction) => {
            console.log(`Collected reaction: ${reaction.emoji.name}`);
            resolve(reaction.emoji.name);  // Resolve with the emoji selected
        });

        // Handle end of collection (timeout or user reactions stop)
        collector.on('end', (collected, reason) => {
            if (reason === 'time') {
                msg.channel.send('Reaction time has ended.');
            }
            reject('No valid reaction collected within the time limit.');
        });
    });
}

function botreaction(emojilist, helpMessage) {
    console.log("Emoji list: " + emojilist);
    // Loop through each emoji and react with it
    for (let i = 0; i < emojilist.length; i++) {
        helpMessage.react(emojilist[i]);
        console.log('Reacted with: ' + emojilist[i]);
    }
}

module.exports = {
    botanswer,
    botreaction,
};




/*
async function botanswer(msg,dialogue1,ManualEmoji){  
        
        const helpMessage = await msg.reply(dialogue1);
        const filter = (reaction, user) => {
            return ManualEmoji.includes(reaction.emoji.name) && !user.bot;
        };
   

    await botreaction(ManualEmoji,helpMessage);
    return new Promise((resolve, reject) => {
    const collector = helpMessage.createReactionCollector({ filter, time: 60000 });
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
    }

}
module.exports = {
    botanswer,
    botreaction,
   // botreply
 }
*/

    