//
//  ViewController.swift
//  IosCourse
//
//  Created by iOS on 26/3/18.
//  Copyright © 2018 GerardoPerrucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var theLabel: UILabel!
    
    @IBAction func addTapped(_ sender: Any) {
        print("INSIDE \(Date())")
    }
    
   
    @IBAction func addTappedOutside(_ sender: Any) {
        print("OUTSIDE \(Date())")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theLabel.text = "DATE : \(Date())";
        if let s = textField.text {
            print(s);
        }else{
            print("no text");
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        print("-- VIEW DID APPEAR");
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        print("-- VIEW WILL APPEAR ");
        theLabel.text = "APPEAR : \(Date())";
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated);
        print("-- VIEW DID DISAPPEAR");
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
        print("-- VIEW WILL DISAAPPEAR");
    }
    
}

