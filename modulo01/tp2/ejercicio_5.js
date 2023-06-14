//Mayusculas o minusuculas

let texto= prompt("ingrese un texto","")

if(texto===texto.toUpperCase()){
    console.log("el texto esta en mayuscula")
    document.write("el texto esta en mayuscula")
} else if(texto===texto.toLowerCase()){
    console.log("el texto esta en minuscula")
    document.write("el texto esta en minuscula")
}else{
    console.log("el texto contiene mayusculas y minusculas")
    document.write("el texto contiene mayusculas y minusculas")
}