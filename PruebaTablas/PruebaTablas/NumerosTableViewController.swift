//
//  NumerosTableViewController.swift
//  PruebaTablas
//
//  Created by Andres Ciaño on 4/11/18.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

// se define un protocolo como forma de comunicacion desde la celda al controller
// la celda no deberia tener la responsabilidad de procesar un elemento del modelo
// deberian estar desacoplados, y por eso debe delegar la responsabilidad aca
protocol FavoriteDelegate {
    func informarNuevoFavorito(sender: UITableViewCell)
}

class ContactosTableViewController: UITableViewController, FavoriteDelegate {

    // version inicial de mi coleccion de datos
    // un array simple para cuando la tabla tiene una unica seccion
    // y cada posicion del array se corresponde con una fila de la tabla
//    let misContactos = [
//        "Andres", "Tomas", "Patricio", "Gonzalo", "Mateo", "Leonardo", "Andres", "Tomas", "Patricio", "Gonzalo", "Mateo", "Leonardo", "Andres", "Tomas", "Patricio", "Gonzalo", "Mateo", "Leonardo", "Andres", "Tomas", "Patricio", "Gonzalo", "Mateo", "Leonardo"
//    ]

    // version compleja de la coleccion de datos
    // un array de arrays para cuando manejo multiples secciones
    // y cada fila de la tabla se corresponde con un elemento dentro de un subarray
    let misContactos = [
        ["Andres", "Tomas", "Patricio", "Gonzalo", "Mateo", "Leonardo", "Andres", "Tomas"],
        ["Patricio", "Gonzalo", "Mateo"],
        ["Leonardo", "Andres", "Tomas", "Patricio", "Gonzalo", "Mateo", "Leonardo", "Andres", "Tomas", "Patricio"],
        ["Gonzalo", "Mateo", "Leonardo"]
    ]

    // number of sections
    // metodo que se ejecuta cuando la tabla necesita saber cuantas secciones hay que mostrar
    override func numberOfSections(in tableView: UITableView) -> Int {
        return misContactos.count
    }

    // number of rows
    // metodo que se ejecuta cuando la tabla necesita saber cuantas FILAS hay en una seccion particular (que la indica por parametro)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return misContactos[section].count
    }

    // cell for row
    // metodo que se ejecuta cuando la tabla necesita saber cual es la celda que se va a mostrar en una posicion particular (indexpath: indica seccion y fila)
    // este caso carga y configura celdas de estilo basico
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        print("La tabla necesita una celda para mostrar en la seccion \(indexPath.section) en la fila \(indexPath.row)")
//
//        let cell: UITableViewCell
//        if indexPath.row % 2 == 0 {
//            cell = tableView.dequeueReusableCell(withIdentifier: "celdaamarilla",
//                                                 for: indexPath)
//        } else {
//            cell = tableView.dequeueReusableCell(withIdentifier: "celdaroja",
//                                                 for: indexPath)
//        }
//
//        cell.textLabel?.text = misContactos[indexPath.row]
//        cell.detailTextLabel?.text = "Posicion: \(indexPath.row)"
//
//        return cell
//    }


    // este caso carga contactos con celdas custom
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        print("La tabla necesita una celda para mostrar en la seccion \(indexPath.section) en la fila \(indexPath.row)")

        // DEUQUEREUSABLECELL se usa para pedirle a la tabla una celda
        // va a ser responsabilidad de la celda decidir si se instancia una nueva celda
        // en memoria o si se reutiliza una celda ya instanciada previamente
//        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaazul",
//                                            for: indexPath) as! ContactoTableViewCell

        if indexPath.section == 0 {

            let cell = tableView.dequeueReusableCell(withIdentifier: "celdaamarilla",
                                                     for: indexPath)
            cell.textLabel?.text = misContactos[indexPath.section][indexPath.row]
            cell.detailTextLabel?.text = "Posicion: \(indexPath.row)"
            return cell

        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celdaroja",
                                                     for: indexPath)
            cell.textLabel?.text = misContactos[indexPath.section][indexPath.row]
            cell.detailTextLabel?.text = "Posicion: \(indexPath.row)"
            return cell

        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "celdaazul",
                                                     for: indexPath) as! ContactoTableViewCell

            cell.theLabel.text = misContactos[indexPath.section][indexPath.row]
            cell.theImageView.image = UIImage(named: "icono")
            cell.theActivityIndicator.startAnimating()

            // muy importante acordarse de configurar el delegate en la celda
            // si no se configura, cuando el usuario toque el boton la celda no va a poder delegar la responsabilidad de procesar ese evento
            cell.customDelegate = self  // el viewcontroller, que implementa el protocolo
            return cell
        }

    }

    // did select row
    // este metodo se ejecuta cuando la tabla informa que el usuario selecciono una fila particular (indicando en el parametro el indexpath de esa fila)
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("EL USUARIO SELECCIONO LA CELDA EN LA POS \(indexPath)")
        // por ejemplo cambiar fondo de la celda
        // tambien se puede presentar a mano una nueva pantalla
    }

    // estos metodos se ejecutan cuando la tabla pregunta como configurar header/footer
    // se pueden configurar simplemente con un string o de forma mas compleja instanciando una vista entera
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "SECCION \(section)"
    }

    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "FIN DE LA SECCION"
    }

//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//    }
//
//    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//
//    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetalleViewController {

            // indexPathForSelectedRow es el atributo de la tabla que indica
            // el indexpath de la celda que el usuario ha seleccionado
            // como puede no haber ninguna seleccion, puede ser nil => es opcional
            if let selectedIndex = tableView.indexPathForSelectedRow {
                let selectedUser = misContactos[selectedIndex.section][selectedIndex.row]

                print("Se ejecuta el segue a DETAIL porque el usuario selecciono la celda en la posicion \(selectedIndex)")
                print("Particularmente es el elemento \(selectedUser)")

                destination.inputImage = #imageLiteral(resourceName: "icono") //UIImage(named: "icono")

                if selectedUser == "Andres" {
                    destination.inputUsername = selectedUser + " - PROFE"
                } else {
                    destination.inputUsername = selectedUser + " - ALUMNO"
                }

            } else {
                print("Se ejecuta el segue a DETAIL pero no se selecciono ninguna fila")
                destination.inputImage = nil
                destination.inputUsername = "no se selecciono nada"
            }
        }
    }


    // como la clase implementa FAVORITEDELEGATE, debe implementar el metodo definido en el protocol
    func informarNuevoFavorito(sender: UITableViewCell) {
        print("El usuario marco un nuevo favorito")

        // el metodo indexPath(for:) indica cual es el indexpath de una celda
        if let senderIndexPath = tableView.indexPath(for: sender) {
            let contactoAsociado = misContactos[senderIndexPath.section][senderIndexPath.row]

            /*
            si el contacto estaba marcado como favorito
            al tocar el boton, se quiere desfavoritear.
            caso contrario, se favoritea.
            */

            print("EL USUARIO QUE SE MARCO COMO FAVORITO ES \(contactoAsociado)")
        }
    }


}
