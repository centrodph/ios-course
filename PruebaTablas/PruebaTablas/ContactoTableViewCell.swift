//
//  ContactoTableViewCell.swift
//  PruebaTablas
//
//  Created by Andres Ciaño on 4/11/18.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

class ContactoTableViewCell: UITableViewCell {

    @IBOutlet weak var theImageView: UIImageView!
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var theButton: UIButton!
    @IBOutlet weak var theActivityIndicator: UIActivityIndicatorView!

    var customDelegate: FavoriteDelegate?

    // cuando el usuario toca el boton, la celda solo debe
    // informar a su delegado
    // a lo sumo puede hacer alguna modificacion visual
    @IBAction func tapButton(_ sender: Any) {
        customDelegate?.informarNuevoFavorito(sender: self)

        if theButton.isSelected {
            theButton.isSelected = false
        } else {
            theButton.isSelected = true
        }
    }

}
