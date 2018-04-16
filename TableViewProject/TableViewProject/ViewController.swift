//
//  ViewController.swift
//  TableViewProject
//
//  Created by iOS on 16/4/18.
//  Copyright © 2018 Accenture. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titulo: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.text = name
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

