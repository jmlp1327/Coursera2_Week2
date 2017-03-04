//
//  Step2VC.swift
//  Pizza
//
//  Created by Johana Lopez on 4/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import UIKit

class Step2VC: UIViewController {

    var size = ""
    private var mass = ""
    
    override func viewDidLoad() {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "step2_crunchy") {
            self.mass = "Crujiente"
        } else if (segue.identifier == "step2_thin") {
            self.mass = "Delgada"
        } else if (segue.identifier == "step2_heavy") {
            self.mass = "Gruesa"
        }
        
        let nextView = segue.destination as! Step3VC
        nextView.size = self.size
        nextView.mass = self.mass
    }
    
}

