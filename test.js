const Blockchain = require("./blockchain");
let egycoin = new Blockchain();
egycoin.createGenesisBlock();

egycoin.createNewTransaction(8000,"karim","habiba");

egycoin.createNewTransaction(8000,"haidy","menna");
egycoin.createNewTransaction(8000,"nour","ahmed");

console.log(egycoin);

//console.log(Date);
