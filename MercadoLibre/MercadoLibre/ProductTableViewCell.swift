//
//  ProductTableViewCell.swift
//  MercadoLibre
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 iOS. All rights reserved.
//

import UIKit
import Kingfisher

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var iamge: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(product: Producto){
        title.text = product.title
        price.text = "\(product.price)"
        let url = URL(string: product.thumbnail)
        iamge.kf.setImage(with: url)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
