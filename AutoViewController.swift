//
//  AutoViewController.swift
//  Auto
//
//  Created by Павел Музычкин on 13.07.17.
//  Copyright © 2017 MPA. All rights reserved.
//

import UIKit

class AutoViewController: UIViewController {
    
    var carkit = CarKit(matsSum: 2500, protectSum: 1000, winterSum: 30000, diskSum:  50000, discountPercent: 10.0)
    
    
    
    var carKitSum: Int = 0
    var totalCarKitSum: Int = 0

    
    

    @IBOutlet weak var matsSwitch: UISwitch!
    
    @IBOutlet weak var protectSwitch: UISwitch!
    
    @IBOutlet weak var winterSwith: UISwitch!
    
    @IBOutlet weak var diskSwitch: UISwitch!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBAction func okButton(_ sender: Any) {
        
        print("Вошли в метод")
        
        let zzz = carkit.winterSum
       
        print ("\(zzz)")
        
        
        let yyy = carkit.CarDiscountSum(percent: 20.0)
        
        
        print("Скидка \(yyy)")
        
        
/*      print(matsSwitch.setOn)
        print(protectSwitch.setOn)
        print(winterSwith.setOn)
        print(diskSwitch.setOn)
 */
        
        
    }
    

}
