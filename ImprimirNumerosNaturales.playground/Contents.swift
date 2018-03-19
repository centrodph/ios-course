//: Playground - noun: a place where people can play

import UIKit

var suma = 0;
for i in 1...100{
    suma = suma + i ;
}

print("Suma de los primeros 100 numeros naturales \(suma)")

var sumaPares = 0;
for j in 1...100{
    if j % 2 == 0{
        sumaPares = sumaPares + j;
    }
}

print("Suma de los primeros 100 numeros naturales pares \(sumaPares)")
