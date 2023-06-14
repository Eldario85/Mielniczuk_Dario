//creamos la variables a utilizar
let dato, resultado;
//generamos un prompt para pedir al usuario que introduzca su nombre
val1 = window.prompt("Introduce tu nombre", "...");
//generamos un segundo prompt para pedir que ingrese el apellido
val2 = window.prompt("Introduce tu apellido", "...");
//En la variable resultado guardamos un string que concatene el nombre y apellido con la frase
resultado = `Concatenado tu nombre y apellido es: ${val1} ${val2} ` ;
//imprimimos por pantalla el resultado
document.write(resultado);