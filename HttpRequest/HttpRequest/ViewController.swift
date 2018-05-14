//
//  ViewController.swift
//  HttpRequest
//
//  Created by iOS on 14/5/18.
//  Copyright © 2018 iOS. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var label: UILabel!
    @IBAction func LOAD(_ sender: Any) {
        print("CLICK")
        label.text=" .... ";
        activityIndicator.startAnimating()
        Alamofire
            .request("https://api.chucknorris.io/jokes/random")
            .responseJSON { response in
                // original url request
                print("Request: \(String(describing: response.request))")
                // http url response
                print("Response: \(String(describing: response.response))")
                // response serialization result
                print("Result: \(response.result)")
                
                // serialized json response
                if let json = response.result.value as? [String:AnyObject]{
                    print("JSON: \(json)")
                    
                    if let joke=json["value"] as? String{
                        self.label.text = joke
                    }
                    
                    self.activityIndicator.stopAnimating()
                }
                
                // original server data as UTF8 string
                if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                    print("Data: \(utf8Text)")
                    //self.label.text=utf8Text
                }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

