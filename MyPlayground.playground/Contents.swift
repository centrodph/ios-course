//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print(str);


var result = 7 + 3.5 ;


// let es para constantes o sea que no cambia su valor una vez asignado
let constante: Int;


constante = 123;


var condicion: Bool = true && true || !(false) ;

condicion = 7 >= 5


if condicion {
    print("verdadero")
} else {
    print("falso");
}

print("-------------------------------------")

var contador = 10

while contador > 0 {
    print(contador)
    contador = contador - 1
}
print("-------------------------------------")

contador = 10
repeat {
    print(contador);
    contador = contador - 1;
    
} while contador > 0

print("-------------------------------------")

let numeros = [221,3342,313,554,6312,78,222,9333,23.22]

for minumerito in numeros {
    print(minumerito)
}


print("-------------------------------------")
print("intervalos")

//intervalos
var numerosDel1al10 = 1...10 //inclusive
var numerosDel1Al9 = 1..<10 //exclusive


for i in 1...10 {
    print(i)
}


print("-------------------------------------")
print("stride")

for j in stride(from: 1, to: 20, by: 2){
    print("es mi valor de j= \(Double(j) + 5.0/3.0 )")
}






