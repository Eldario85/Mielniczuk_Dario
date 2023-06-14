//par o impar
let num = prompt("ingrese un numero para saber si es par o impar", 0)
if (num % 2 === 0) {
  console.log(num + " es par");
  document.write(`El numero ${num} es Par`)
} else {
  console.log(num + " es impar");
  document.write(`El numero ${num} es Impar`)
}