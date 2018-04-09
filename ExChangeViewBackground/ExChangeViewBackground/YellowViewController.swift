//
//  YellowViewController.swift
//  ExChangeViewBackground
//
//  Created by Digital House on 9/4/18.
//  Copyright © 2018 GerardoPerrucci. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
