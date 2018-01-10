//
//  MainVC_1.swift
//  Cold Call
//
//  Created by Ryan Kistner on 1/10/18.
//  Copyright © 2018 Ryan Kistner. All rights reserved.
//

import UIKit

class MainVC_1: UIViewController {

    @IBOutlet weak var personsName: UILabel!
    
    let name : [String] = ["Ryan", "Shane", "Pat", "Dan", "Chris", "Karesa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personsName.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func callButtonPressed(_ sender: Any) {
        print("Button Pressed")
        personsName.text = name[Int(arc4random_uniform(UInt32(name.count)))]
        personsName.isHidden = false
    }
    
}

