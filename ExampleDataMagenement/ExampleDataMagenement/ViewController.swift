//
//  ViewController.swift
//  ExampleDataMagenement
//
//  Created by iOS on 7/5/18.
//  Copyright © 2018 gerardoperrucci. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "https://andro4all.com/files/2017/04/Nonstop-Chuck-Norris-700x500.jpg");
        theImageView.kf.setImage(with: url)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

