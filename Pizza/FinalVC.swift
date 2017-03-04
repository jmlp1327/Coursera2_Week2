//
//  FinalVC.swift
//  Pizza
//
//  Created by Johana Lopez on 4/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {
    
    @IBOutlet weak var strSize: UILabel!
    @IBOutlet weak var strMass: UILabel!
    @IBOutlet weak var strCheesse: UILabel!
    @IBOutlet weak var strIngredients: UILabel!
    
    
    var size = ""
    var mass = ""
    var cheesse = ""
    var lstIngredients : [String] = []
    
    override func viewDidLoad() {
        self.strSize.text = self.size
        self.strMass.text = self.mass
        self.strCheesse.text = self.cheesse
        
        for i in lstIngredients {
            strIngredients.text = "\(strIngredients.text!) - \(i) \n"
        }
    }
    
    @IBAction func restart() {
        
        let alert = UIAlertController(title: "Felicidades", message: "Estamos listos para preparar tu Pizza", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            self.navigationController?.popToRootViewController(animated: true)
        }))
        present(alert, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
}
