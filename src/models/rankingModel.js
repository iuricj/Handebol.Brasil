var database = require("../database/config")

function listar() {
    var instrucao = `
    select count(fkIdolo) as votos, i.nomeIdolo from usuario as u join idolo as i where u.fkIdolo = i.idIdolo group by u.fkIdolo;
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    listar
};