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
        
        let TotalSum = carkit.CarKitSum() + carkit.CarWithoutDiscountSum(percent: 20.0)

        print("Сумма со скидкой: \(TotalSum)")
        
        
/*      print(matsSwitch.setOn)
        print(protectSwitch.setOn)
        print(winterSwith.setOn)
        print(diskSwitch.setOn)
 */
        
        
    }
    

}
