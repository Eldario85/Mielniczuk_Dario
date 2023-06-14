
let palabra = prompt("Escriba una palabra o una frase", "")
let palabraAlReves = palabra.split("").reverse().join("")

console.log(palabraAlReves)
document.write(`La palabra o la frase introducida, si lo damos vuelta quedaria asi ${palabraAlReves}`)