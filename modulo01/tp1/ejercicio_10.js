let meses = ['enero', 'febrero', 'marzo', 'abril', 'mayo', 'junio', 'julio', 'agosto', 'septiembre', 'octubre', 'noviembre', 'diciembre'];
let consultaMes = prompt('Ingrese el numero del mes a consultar', '...');
if(consultaMes>0 && consultaMes<=12){
    document.write(`El mes indicado es: ${meses[consultaMes - 1]}`)
}else{
    alert('El numero indicado No corresponde a un mes')
}
