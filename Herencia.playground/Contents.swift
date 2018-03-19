//: Playground - noun: a place where people can play

import UIKit

class Persona{
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

class PersonaFisica: Persona {
    override public func presentarse() -> String {
        return "Soy persona FISICA \(getNombre())"
    }
}
class PersonaJuridica: Persona {
    override public func presentarse() -> String {
        return "Soy persona JURIDICA \(getNombre())"
    }
}

var perFisica: PersonaFisica = PersonaFisica(nombre: "MIGUEL")

print(PersonaFisica(n: "orale").presentarse())
print(PersonaJuridica(n: "tetstst").presentarse())



