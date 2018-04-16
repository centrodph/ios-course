//
//  NombresTableViewController.swift
//  TableViewProject
//
//  Created by iOS on 16/4/18.
//  Copyright © 2018 Accenture. All rights reserved.
//

import UIKit


protocol FavoriteManagerProtocol {
    func actualizarFavorito(from cell: UITableViewCell)
}

class NombresTableViewController: UITableViewController, FavoriteManagerProtocol {
    
    
    func actualizarFavorito(from cell: UITableViewCell) {
        print("TABLA actualizarFavorito")
        if let selectedIndexPath = tableView.indexPath(for: cell){
            print(" ahora es favorito \(misContactos[selectedIndexPath.row])")
        }
        
    }
    

    let misContactos = ["Romero", "Banegas", "Messi", "Palermo", "Riquelme", "Susana", "Cortazar", "Kasparov", "Sulma", "Charly", "Eva", "Puka", "Mora",
                        "Maradona", "Favarolo", "Nelson", "Orale", "Buey", "El2",
                        "Test Test", "Buey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        print("pregunta por cuantas secciones")
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print("pregunta por cantidad de filas en row")
        return misContactos.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Casteo
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdaAzul", for: indexPath) as! ContactoTableViewCell
        
        
        print("la tabla pide una celda en fila \(indexPath.row) de la seccion \(indexPath.section)")
        // Configure the cell...
        cell.contactoLabel.text = misContactos[indexPath.row]
        cell.contactSwitch.isOn = false
        cell.contacto = misContactos[indexPath.row]
        cell.favoriteDelegate = self
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("la tabla informa que se toco la celda \(indexPath.row) \(indexPath.section)")
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("PREPARE FOR SEGUEEE!!!!")
        
        if let destination = segue.destination as? ViewController{
            
            if let indexPath = tableView.indexPathForSelectedRow {
                print("SEGUE DE LA CELDAAAA \(indexPath.row)")
                let name = misContactos[indexPath.row]
                destination.name = name
            }
        }
    }
 

}
