let OlderPersonName = prompt("Qual o nome da pessoa mais velha?")
let OlderPersonAge = prompt("Qual a idade da pessoa mais velha?")

let YoungerPersonName = prompt("Qual o nome da pessoa mais nova?")
let YoungerPersonAge = prompt("Qual a idade da pessoa mais nova?")


let AgeDiference = OlderPersonAge - YoungerPersonAge

alert(
    "Pessoa mais velha: " + OlderPersonName + "\nIdade: " + OlderPersonAge + 
    "\n\nPessoa mais nova: " + YoungerPersonName + "\nIdade: " + YoungerPersonAge + "\n\nDiferença de Idade: " + AgeDiference
)