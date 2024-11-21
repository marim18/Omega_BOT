const { botreaction } = require("./Messageclass");

function queryfunction(query, Actionfunction,param){
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
/*
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
}*/

function EmojitoId(limbemoji)
 {
    const EmojiId = 'SELECT category_id FROM categories WHERE emoji = ? or categoryEmoji = ?';
   return new Promise((resolve,reject)=> {db.all(EmojiId, [limbemoji,limbemoji], (err, rows) => 
    {
         
        if (err) {
          reject(console.error("Error executing query:", err.message));
          return;
        }
        else{
        const cat_id = rows.map(row => row.category_id);
        console.log (cat_id);
        resolve(cat_id);}
        
    }); });
}


async function filterfunc(cat_id)
{   console.log('is inside fucntion'+cat_id);
    const query = 'SELECT * FROM Ailments WHERE category_id = ?';
   var searchresults = [];
   /* cat_id.forEach( async id =>
    {
        const result = await  queryfunction(query,filtersender,id);
        console.log('hello' +result);

    })*/
for (const id of cat_id ){
    const result = await  queryfunction(query,filtersender,id);
    searchresults.push(result);
    console.log('hello' +result);
}


    
    console.log(searchresults);
   return searchresults;
}

function filtersender(rows){
    return searchresults = rows.map(row => row.title);
}

function articleopener(param){
    const query = 'SELECT * FROM Ailments WHERE title = ? LIMIT 1';
    return queryfunction(query, openarticle, param);
}
   
function openarticle(rows)
{
    
    const articleresult = rows.map(row => row.title + '\n'+ row.body);  
    return articleresult;

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


module.exports = {
    queryfunction, // db automation function
    EmojitoId, 
    EmojiFilter3, //gets a list of emoji 
    //dbfunc,
   // Emojidb2,
    filterfunc, // based on given category id gives a list of titles
    openarticle, // opens the article
    articleopener, //sends stuff into open article
};

class q{
    openquery = 'SELECT * FROM Ailments WHERE title = ?';
    speficyemoji = 'SELECT emoji FROM categories WHERE categoryEmoji = ?';
    emojiId = 'SELECT category_id FROM categories WHERE emoji = ? or categoryEmoji = ?';
    Ailmentbyid = 'SELECT * FROM Ailments WHERE category_id = ?'
    
}