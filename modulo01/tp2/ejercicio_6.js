//encontrar la vocal

let texto = prompt("Ingrese un texto a verificar", "")
vocalencontrada = texto.match(/[aeiou]/)
document.write("la palabra para buscar la primer vocal es " + texto.toUpperCase() + "</br>")
document.write("la primer vocal encontrada es " + vocalencontrada + "</br>")
posicion = texto.indexOf(vocalencontrada)
document.write("esta vocal se encuentra en la posicion N° " + (posicion + 1) + "</br>");