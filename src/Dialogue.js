class appdialogue{

}
function DetailedSearchMessage(rows){
    const mesage = [];
    rows.forEach(row => {
        mesage.concat(`Select the right emoji ${row.emoji} = ${row.categorytitle}\n`);
    })
    return mesage;
}