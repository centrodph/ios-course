//: Playground - noun: a place where people can play

import UIKit



//Arrays
let miArray = [1,2,3,4,5,6,7,8,9,10]

var abcedario: [String]

abcedario = ["a","b", "d"]
abcedario[0]
// abcedario[1222] error
abcedario.append("c")
abcedario.count
abcedario.insert("z", at: 0)
abcedario.remove(at: 3)
abcedario.index(of: "b")

abcedario.first
abcedario.last




// Set
let setNumeros = Set(miArray)



//Diccionario
var numerosDeTelefono : [String:Int]
numerosDeTelefono = [:]

numerosDeTelefono["jose"] = 189231
numerosDeTelefono["maria"] = 282828

print(numerosDeTelefono["jose"])
print(numerosDeTelefono["epale"])

numerosDeTelefono.count

for i in numerosDeTelefono.keys {
    print(i)
}

for (key,value) in numerosDeTelefono{
    print("El valor de la clave \(key) es \(value)")
}



//variables opcionales

var nombre : String
var segundoNombre: String? = "fernando"

nombre = "andres"


print(" \(nombre) \(segundoNombre)")


if segundoNombre != nil {
    print(segundoNombre!)
}

if let elValordelSegundoNombre = segundoNombre {
    print("test " + elValordelSegundoNombre)
}





















