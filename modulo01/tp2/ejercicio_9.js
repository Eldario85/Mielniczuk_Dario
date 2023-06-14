// notas y promedios

let notas = []
let cantNotas= parseInt(prompt('Ingrese la cantidad de notas del alumno', 0))

for(i=0; i<cantNotas; i++){
    let nota = parseInt(prompt('ingrese la nota numero '+ (i+1),0))
    if(nota<=0 || nota>=10){
    alert("ingrese un numero valido del 1 al 10")
    }else{
        
        notas.push(nota)
    }
}
console.log(notas)