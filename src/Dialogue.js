class appdialogue{
//btw u open database qith >sqlite3 open db right above this sentence there is a search bar.

}
function DetailedSearchMessage(rows){ 
    const mesage = [];
    rows.forEach(row => {
        mesage.concat(`Select the right emoji ${row.emoji} = ${row.categorytitle}\n`);
    })
    return mesage;
}