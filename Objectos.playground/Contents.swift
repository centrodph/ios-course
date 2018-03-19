//: Playground - noun: a place where people can play

import UIKit

public class Persona {
    static  var staticProperty = "hola"
    private var nombre: String
    private var apellido: String
    
    init(nombre: String, apellido: String){
        self.nombre = nombre;
        self.apellido = apellido;
        
    }
    
    public func presentarse() -> String{
        print(Persona.staticProperty)
            return "Mi nombre es \(nombre) \(apellido)"
    }
    
}


var alumno: Persona = Persona(nombre: "Gerardo", apellido: "Perrucci");
alumno.presentarse()
