

function DetailedSearchMessage(rows){ 
   
    const message = [];
    rows.forEach(row => {
       
        const emojiDescription = EmojiDictionary[row.emoji] || "(description not found)";
        message.push(`Select the right emoji: ${row.emoji} = ${row.categorytitle} (${emojiDescription})\n`);
    });
    return message.join(""); 
   
  
}


const dialogue1 =("Comment the emoji that fits the area of the problem.\n\n 👕 for torso and back,\n 🦵 for glutes and below,\n💆‍♂️ for neck pain or above,\n 🦾 for arm and wrist pain");

const EmojiDictionary = {
    "👕": " Torso; then lets specify. Is it at the Loweback🪑 or shoulders🤷",
    "🦵": " Glutes & bellow; let's then specify. is it hips 🩳, orthe legs🦿",
    "🦾": " Arms and wrist pain; let's then specify. Is it the hands👐, fingers☝️ or wrists✍️?",
    "💆‍♂️": " Neck pain or above; let's then specify. Is it the neck 🧣, head🧑‍🦱 or eyes👀", 

};



function generateMessages(emojis) {
    return emojis
    .map((emoji) => EmojiDictionary[emoji] || `(${emoji} is undefined in the dictionary)`)
    .join(", ");
}
module.exports  ={
dialogue1,
EmojiDictionary,

}