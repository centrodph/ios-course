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
        let url = URL(string: "https://www.nasa.gov/sites/default/files/1-bluemarble_west.jpg");
        //stheImageView.kf.setImage(with: url)
        theImageView.kf.setImage(with: url, placeholder: UIImage(named: "placeholder"), options: nil, progressBlock: nil, completionHandler: nil)
        
        //ejecuto el closure
        //UIView.animate(withDuration: 3, animations: animacionDelaImagen)
        
        UIView.animate(withDuration: 3) {
            self.theImageView.center.y += 100
        }
        
        
    }

    func animacionDelaImagen(){
        theImageView.center.y += 100
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

