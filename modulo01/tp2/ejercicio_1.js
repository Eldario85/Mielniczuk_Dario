var valores = [true, false, 2, "hola", "mundo", 3, "char"];
var longitud = 0
var texto = []
var listanumeros = []
var palabramayor = ""
suma = 0
resta = 0
multiplicacion = 0
division = 0
for (valor of valores) {
  if (typeof (valor) == "string") {
    texto.push(valor);
    if (valor.length > longitud) {
      palabramayor = valor
      longitud = palabramayor.length
    }
  }
  else if (typeof (valor) == "number") {
    listanumeros.push(valor)
    suma = listanumeros.reduce((a, b) => a + b, 0);
    resta = listanumeros.reduce((a, b) =>  a - b );
    multiplicacion = listanumeros.reduce((a, b) => a * b, 1)
    division = listanumeros.reduce((a, b) => a / b, 1)
  }
}

document.write("La palabra mas larga es: " +palabramayor.toUpperCase()+"<br>")
document.write("El texto ordenado de menor a mayor quedaria asi: "+texto.sort(function(a, b){return a.length - b.length})+"</br>")
document.write(`La suma de los numeros da ${suma} </br>`)         
document.write(`La resta de los numeros da ${resta}</br>`)  
document.write(`EL producto de los numeros da ${multiplicacion}</br>`)  
document.write(`La division de los numeros da ${division}</br>`)  