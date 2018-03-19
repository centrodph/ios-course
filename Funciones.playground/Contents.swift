//: Playground - noun: a place where people can play

import UIKit


// _ quiere decir que no requiere etiqueta
func saludar(a nombre: String, de empresa: String){
    print("Welcome! \(nombre) de \(empresa)")
}

func saludar(_ nombre: String, _ empresa: String){
    print("TEST \(nombre) de \(empresa)")
}


saludar(a:"Gerardo",de:"Accenture")
saludar("Gerardo","Accenture")


func encontrarMax(entre a:Int, y b: Int) -> Int{
    return  ( a > b ? a : b)
}

var result = encontrarMax(entre: 78, y: -78)
print(result)




// funcion de sumar numeros

func sumarPares(entre a: Int, y b: Int) -> Int {
    var suma = 0;
    for j in a...b{
        if j % 2 == 0 {
            suma = suma + j
        }
    }
    return suma
}

print("suma de pares entre 1 y 100 \(sumarPares(entre: 1, y: 100))")




