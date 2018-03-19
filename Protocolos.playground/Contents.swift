//: Playground - noun: a place where people can play

import UIKit

protocol Volador{
    func volar()
    func volarEnReversa()
}
public class Persona: Comparable{
    public static func <(lhs: Persona, rhs: Persona) -> Bool {
        return lhs.getNombre().count < rhs.getNombre().count
    }
    
    public static func ==(lhs: Persona, rhs: Persona) -> Bool {
        return lhs.getNombre().count == rhs.getNombre().count
    }
    
    private var nombre: String
    
    init(nombre: String){
        self.nombre = nombre;
    }
    init(n: String){
        self.nombre = n + n;
    }
    
    public func getNombre() -> String{
        return nombre;
    }
    
    public func presentarse() -> String{
        return "Mi nombre es \(nombre)"
    }
}

public class SuperHeroe: Persona, Volador{
    func volar() {
        print("estoy volando")
    }
    
    func volarEnReversa() {
        print("odanlov yotse")
    }
    
    
}

var clark = SuperHeroe(nombre: "Clark Kent")
var bruno = SuperHeroe(nombre: "Bruno diaz1")
print(clark.presentarse())
clark.volar()

if clark == bruno {
    print("SON LO MISMO")
} else {
    print("No SON LO MISMO")
}



