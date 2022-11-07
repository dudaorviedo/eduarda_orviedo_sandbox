const medidas = prompt("Insira uma medida em metros: ")

const unidade = prompt("Para qual unidade de medida deseja converter? \na) milímetros (mm)" +
"\nb) centímetros (cm)" +
"\nc) decímetros (dm)" +
"\nd) decâmetros (dam)" +
"\ne) hectômetro (hm)" +
"\nf) quilômetro (km)"
)

switch(unidade){
    case "a":
        alert("Resultado " + medidas + "m = " + medidas * 1000 + "mm")
        break
    case "b":
        alert("Resultado " + medidas + "m = " + medidas * 100 + "cm")
        break
    case "c":
        alert("Resultado " + medidas + "m = " + medidas * 10 + "dm")
        break
    case "d":
        alert("Resultado " + medidas + "m = " + medidas / 10 + "dam")
        break
    case "e":
        alert("Resultado " + medidas + "m = " + medidas / 100 + "hm")
        break
    case "f":
        alert("Resultado " + medidas + "m = " + medidas / 1000 + "km")
        break
    default:
        alert("Opção Inválida")
}