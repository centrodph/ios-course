//
//  DetalleViewController.swift
//  PruebaTablas
//
//  Created by Andres Ciaño on 4/11/18.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var avatarImageView: UIImageView!

    @IBOutlet weak var usernameLabel: UILabel!

    var inputImage: UIImage?
    var inputUsername: String?


    override func viewDidLoad() {
        super.viewDidLoad()

        usernameLabel.text = inputUsername
        avatarImageView.image = inputImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
