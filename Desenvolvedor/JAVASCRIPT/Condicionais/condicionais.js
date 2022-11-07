let pilotName = prompt("Qual seu nome, piloto?")

let velocity = 0

let newVelocity = prompt("A que velocidade você gostaria de acelerar?")

let confirmVelocity = confirm("Estamos acelerando para " + newVelocity + "km/s")

if(confirmVelocity) {
    velocity = newVelocity
}

if(velocity <= 0) {
    alert("Nave está parada. Considere partir e aumentar a velocidade.")
} else if(velocity < 40) {
    alert("Você está devagar, podemos aumentar mais.")
} else if(velocity < 80) {
    alert("Parece uma boa velocidade para manter.")
} else if(velocity < 100) {
    alert("Velocidade alta. Considere reduzir.")
} else {
    alert("Velocidade perigosa, controle automático forçado.")
}

alert("Piloto: " + pilotName + "\nVelocidade: " + velocity + "km/s")