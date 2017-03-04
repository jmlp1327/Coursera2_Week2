//
//  Step3VC.swift
//  Pizza
//
//  Created by Johana Lopez on 4/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import UIKit

class Step3VC: UIViewController {
    
    var size = ""
    var mass = ""
    private var cheesse = ""
    
    override func viewDidLoad() {
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "step3_mozzarella") {
            self.cheesse = "Mozzarella"
        } else if (segue.identifier == "step3_cheddar") {
            self.cheesse = "Cheddar"
        } else if (segue.identifier == "step3_parmesan") {
            self.cheesse = "Parmesano"
        } else if (segue.identifier == "step3_no") {
            self.cheesse = "Sin Queso"
        }
        
        let nextView = segue.destination as! Step4VC
        nextView.size = self.size
        nextView.mass = self.mass
        nextView.cheesse = self.cheesse
    }
    
}
