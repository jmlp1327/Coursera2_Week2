//
//  Step4VC.swift
//  Pizza
//
//  Created by Johana Lopez on 4/03/17.
//  Copyright © 2017 Johana Lopez. All rights reserved.
//

import UIKit

class Step4VC: UIViewController {
    
    
    @IBOutlet weak var btnIng1: UIButton!
    @IBOutlet weak var btnIng2: UIButton!
    @IBOutlet weak var btnIng3: UIButton!
    @IBOutlet weak var btnIng4: UIButton!
    @IBOutlet weak var btnIng5: UIButton!
    @IBOutlet weak var btnIng6: UIButton!
    @IBOutlet weak var btnIng7: UIButton!
    @IBOutlet weak var btnIng8: UIButton!
    
    var size = ""
    var mass = ""
    var cheesse = ""
    private var lstIngredients : [String] = []
    private var count = 0
    
    private var greenColor = UIColor(red: 0/255, green: 179/255, blue: 70/255, alpha: 1)
    private var redColor = UIColor(red: 204/255, green: 0/255, blue: 37/255, alpha: 1)
    
    override func viewDidLoad() {
        btnIng1.setTitleColor(self.redColor, for: .normal)
        btnIng2.setTitleColor(self.redColor, for: .normal)
        btnIng3.setTitleColor(self.redColor, for: .normal)
        btnIng4.setTitleColor(self.redColor, for: .normal)
        btnIng5.setTitleColor(self.redColor, for: .normal)
        btnIng6.setTitleColor(self.redColor, for: .normal)
        btnIng7.setTitleColor(self.redColor, for: .normal)
        btnIng8.setTitleColor(self.redColor, for: .normal)
    }
    
    @IBAction func addIngredient(_ sender: UIButton) {
        
        if (sender.currentTitleColor == self.redColor) {
            
            if (count < 5) {
                sender.setTitleColor(self.greenColor, for: .normal)
                count = count  + 1
                let ing = sender.titleLabel?.text
                self.lstIngredients.append(ing!)
            } else {
                let alert = UIAlertController(title: "Lo sentimos", message: "El número máximo de ingredientes permitidos es cinco (5)", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                present(alert, animated: true, completion: nil)
            }
        } else {
            sender.setTitleColor(self.redColor, for: .normal)
            count = count  - 1
            let ing = sender.titleLabel?.text
            delete(element: ing!)
        }
        
    }
    
    func delete(element: String) {
        if let index = self.lstIngredients.index(of: element) {
            self.lstIngredients.remove(at: index)
        }
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let nextView = segue.destination as! FinalVC
        nextView.size = self.size
        nextView.mass = self.mass
        nextView.cheesse = self.cheesse
        nextView.lstIngredients = self.lstIngredients
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if count == 0 {
            
            let alert = UIAlertController(title: "Lo sentimos", message: "Debe de seleccionar un ingrediente como mínimo", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
            return false
        } else {
            return true
        }
        
    }
    
}
