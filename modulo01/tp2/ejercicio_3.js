//factorial
let num = prompt("ingrese un numero para calcular el factorial", 0)
factorial = 1;
for (i = num; i > 0; i--) {
    factorial *= i;
}
console.log(factorial);
document.write(`El factorial del numero ${num} es ${factorial}`)