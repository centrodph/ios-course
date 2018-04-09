//
//  ViewController.swift
//  ColoresConSliders
//
//  Created by Andres Ciaño on 3/28/18.
//  Copyright © 2018 Digital House. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rSlider: UISlider!
    @IBOutlet weak var gSlider: UISlider!
    @IBOutlet weak var bSlider: UISlider!

    @IBAction func onChangenewSlider(_ sender: UISlider) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func update(_ sender: Any) {
        view.backgroundColor = UIColor(
            red: CGFloat(rSlider.value),
            green: CGFloat(gSlider.value),
            blue: CGFloat(bSlider.value),
            alpha: 1.0)
    }


    @IBAction func rValueChanged(_ sender: Any) {
        print("CAMBIO ROJO")
//        view.backgroundColor = UIColor(
//            red: CGFloat(rSlider.value),
//            green: CGFloat(gSlider.value),
//            blue: CGFloat(bSlider.value),
//            alpha: 1.0)
    }

    @IBAction func gValueChanged(_ sender: Any) {
        print("CAMBIO VERDE")
//        view.backgroundColor = UIColor(
//            red: CGFloat(rSlider.value),
//            green: CGFloat(gSlider.value),
//            blue: CGFloat(bSlider.value),
//            alpha: 1.0)
    }

    @IBAction func bValueChanged(_ sender: Any) {
        print("CAMBIO AZUL")
//        view.backgroundColor = UIColor(
//            red: CGFloat(rSlider.value),
//            green: CGFloat(gSlider.value),
//            blue: CGFloat(bSlider.value),
//            alpha: 1.0)
    }



}

