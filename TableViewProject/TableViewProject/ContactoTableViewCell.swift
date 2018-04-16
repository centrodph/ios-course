//
//  ContactoTableViewCell.swift
//  TableViewProject
//
//  Created by iOS on 16/4/18.
//  Copyright © 2018 Accenture. All rights reserved.
//

import UIKit

class ContactoTableViewCell: UITableViewCell {

    @IBOutlet weak var contactoLabel: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    @IBOutlet weak var contactSwitch: UISwitch!
    
    var contacto: String?
    
    var favoriteDelegate: FavoriteManagerProtocol?
    
    
    @IBAction func favoriteChange(_ sender: UISwitch) {
        
        //NO USAR
        print("El usuario toco el SWITCH!!!! \(contacto)")
        favoriteDelegate?.actualizarFavorito(from: self)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
