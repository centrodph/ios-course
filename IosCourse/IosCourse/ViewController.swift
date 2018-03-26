//
//  ViewController.swift
//  IosCourse
//
//  Created by iOS on 26/3/18.
//  Copyright © 2018 GerardoPerrucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        print("-- VIEW WILL APPEAR \()");
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

