let distanceInLy = prompt("Digite a distância em anos-luz: ")

let chosenOption = prompt("Para qual unidade deseja converter? \n1. Parsec(pc)\n2. Unidade Astronômica" +
"\n3. Quilômetros(km)\n\n(Digite o numero da opção desejada)")

let chosenUnit
let convertedDistance

switch (chosenOption) {
    case "1":
        chosenUnit = "Parsec"
        convertedDistance = distanceInLy * 0.306601
        break
    case "2":
        chosenUnit = "Unidade Astronômica"
        convertedDistance = distanceInLy * 63241.1
        break
        case "3":
        chosenUnit = "Quilômetros"
        convertedDistance = distanceInLy * 9.5 * Math.pow(10, 12)
        break;
    default:
        chosenUnit = "Unidade não identificada"
        convertedDistance = "Conversão fora do escopo"
        break;
}

alert("Distância em anos-luz: " + distanceInLy + "\n" + chosenUnit + ": " + convertedDistance)