//
//  ViewController.swift
//  Pizza
//
//  Created by Johana Lopez on 4/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var size = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "step1_small") {
            self.size = "Pequeña"
        } else if (segue.identifier == "step1_medium") {
            self.size = "Mediana"
        } else if (segue.identifier == "step1_big") {
            self.size = "Grande"
        }
        
        let nextView = segue.destination as! Step2VC
        nextView.size = self.size
        
    }

}

