//
//  ViewController.swift
//  ExChangeViewBackground
//
//  Created by Digital House on 9/4/18.
//  Copyright © 2018 GerardoPerrucci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnRed: UIButton!
    @IBOutlet weak var btnBlue: UIButton!
    @IBOutlet weak var btnGreen: UIButton!
    
    @IBAction func changeToColor(_ sender: UIButton) {
        print(sender.backgroundColor!)
        view.backgroundColor = sender.backgroundColor;
        var nextScreen = storyboard!.instantiateViewController(withIdentifier: "greenStoryID") as! GreenViewController
        nextScreen.view.backgroundColor = sender.backgroundColor
        nextScreen.label.text = sender.currentTitle
        present(nextScreen, animated:true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("VA a desaparecer la pantalla de los botones!!!!!!")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("VA a DESAPARECIOOO la pantalla de los botones!!!!!!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moveToGreenPage(_ sender: UIButton) {
        print("CAMBIAR A PAGINA VERDE 2")
        var nextScreen = storyboard!.instantiateViewController(withIdentifier: "greenStoryID")
        present(nextScreen, animated:true, completion: nil)
        view.backgroundColor = UIColor.darkGray
    }
    
}

