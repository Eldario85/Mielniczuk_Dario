//Numeros aleatorios

let numeros = new Set();
for (i = 0; numeros.size < 100; i++) {
  numeros.add(Math.floor(Math.random() * 100));
}
console.log(numeros);

let arrayNum = Array.from(numeros);
for (i = 0; i < 100; i++) {
  document.write("El numero " + (i + 1) + " es ----->" + arrayNum[i]);
  document.write("</br>");
}
