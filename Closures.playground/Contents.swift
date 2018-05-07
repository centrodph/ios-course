//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func saludar() {
    print("HOla Mundo")
}
func sumar(a: Int, b: Int) -> Int {
    return a + b
}

//variables implicitas
var operacion = sumar


//variables explicitas
var comportamiento2: ((Int,Int) -> Int)

comportamiento2 = sumar



// funciones anonimas

var toser = {
    print("COF COF")
}


toser()

// definicion implicita
var gritar = { mensaje in
    print(mensaje)
}


gritar("hoollaaaaa")
gritar(55)

//definicion explicita
var gritar2: ( (String)->Void ) = { mensaje in
    print(mensaje)
}




gritar2("HOLA MUNDODOODODOD")



