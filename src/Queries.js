const { botreaction } = require("./Messageclass");

function queryfunction(query, Actionfunction, param){
    let output = [];
    return new Promise((resolve, reject) => {
    db.all(query,[param],(err,rows) =>{
        if (err) {
            console.error("Error executing query:", err.message);
            reject(err);
        }
        else {
            console.log("entered")
            output = Actionfunction(rows);
            resolve(output);
        }
    });
    
    });
}

function dbfunc(query,param){
    return new Promise((resolve, reject) => {
    db.all(query,[param],(err,rows) =>{
        if (err) {
           reject( console.error("Error executing query:", err.message));
            return;
        }
        else {
                console.log("dbfunc")
               resolve(rows);
        }});
    
});
}

function EmojitoId(limbemoji)
 {
    const EmojiId = 'SELECT category_id FROM categories WHERE emoji = ? or categoryEmoji = ?';
    db.all(EmojiId, [limbemoji,limbemoji], (err, rows) => 
    {
         
        if (err) {
          console.error("Error executing query:", err.message);
          return;
        }
        else{
        const cat_id = rows.map(row => row.category_id);
        console.log (cat_id);
        return cat_id;}
        
    }); 
}


function filterfunc(cat_id)
{   const query = 'SELECT * FROM Ailments WHERE category_id = ?';
    const searchresults = [];
  cat_id.forEach( id =>
  {

     db.all(query, [id], (err, rows) =>
        {
            if (err)
            {
            console.error("Error executing query:", err.message);
            return;
             }
            searchresults = rows.map(row => row.Title + row.id);
         
        });
    })
    msg.channel.send("Search results:", searchresults);
}


   
function openarticle(rows)
{
    const articleresult = rows.map(row => row.Title + row.article);
         
    msg.channel.send(articleresult)

}
function EmojiFilter2(rows){
    const emojilist = rows.map(row => row.emoji)
    console.log("debug2" + emojilist);
    return emojilist;
}

function EmojiFilter3(param){
    const query = 'SELECT emoji FROM categories WHERE categoryEmoji = ?';
   return queryfunction(query, EmojiFilter2, param);
}


function Emojidb2(db,param){
    db.find({ emoji, categoryEmoji: param}, function(err , docs){
        return docs;
    });
    
}

async function EmojiFilter(param){
    const query = 'SELECT emoji FROM categories WHERE categoryEmoji = ?';
    var promise1 = new Promise ((resolve,reject)=>{
    db.all(query, [param], (err, rows) =>
        {
            if (err)
            {
            console.error("Error executing query:", err.message);
            reject("lol");
             }
             else{
             resolve(rows.map(row => row.emoji))

             }
        });
    });
}

function DetailedSearchMessage(rows){
    const mesage = [];
    rows.forEach(row => {
        mesage.concat(`Select the right emoji ${row.emoji} = ${row.categorytitle}\n`);
    })
    return mesage;
}


module.exports = {
    queryfunction,
    EmojitoId,
    EmojiFilter,
    EmojiFilter3,
    dbfunc,
    DetailedSearchMessage,
    Emojidb2
};

class q{
    openquery = 'SELECT Ailment FROM Ailments WHERE Title = ?';
    speficyemoji = 'SELECT emoji FROM categories WHERE categoryEmoji = ?';
    emojiId = 'SELECT category_id FROM categories WHERE emoji = ? or categoryEmoji = ?';
    Ailmentbyid = 'SELECT * FROM Ailments WHERE category_id = ?'
    
    //queryfunction(openquery,openarticle,"title")
}