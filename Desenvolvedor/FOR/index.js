let spaceship = prompt("Digite o nome da nave:")

let chartToReplace = prompt("Qual caractere você deseja substituir?")

let replacementChar = prompt("Por qual caractere você deseja substiuir?")

let newSpaceship = ""

for(let pos = 0; pos < spaceship.length; pos++) {
    if(spaceship[pos] == chartToReplace) {
        newSpaceship += replacementChar
    } else {
        newSpaceship += spaceship[pos]
    }
}

alert("O novo nome da nave é: " + newSpaceship) 