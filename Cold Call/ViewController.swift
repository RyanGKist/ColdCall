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
    @IBOutlet weak var number: UILabel!
    
    let name : [String] = ["Ryan", "Shane", "Pat", "Dan", "Chris", "Karesa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personsName.isHidden = true
        number.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func callButtonPressed(_ sender: Any) {
        print("Button Pressed")
        //Persons Name Update
        personsName.text = name[Int(arc4random_uniform(UInt32(name.count)))]
        personsName.isHidden = false
        
        //Number Update
        let randomNumber = Int(arc4random_uniform(5)+1)
        if(randomNumber < 3 && randomNumber > 0){
            number.textColor = .red
            number.text = String(randomNumber)
        }else if (randomNumber < 5 && randomNumber > 2){
            number.textColor = .orange
            number.text = String(randomNumber)
        }else{
            number.textColor = .green
            number.text = String(randomNumber)
        }
        number.isHidden = false
    }
    
}

