//: Playground - noun: a place where people can play

import UIKit

func s() -> String {
    return "usuario"
}

func saludarOp(a nombre: String? = nil){
    print(nombre ?? "nil")
}

func saludar(a nombre: String = s()){
    print(nombre)
}

saludar(a: "pepe")
saludar()

saludarOp()


