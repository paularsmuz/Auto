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
  
    
    
    // переключатели
    @IBOutlet weak var MatsPriceSwitch: UISwitch!
    @IBOutlet weak var ProtectPriceSwitch: UISwitch!
    @IBOutlet weak var WinterPriceSwitch: UISwitch!
    @IBOutlet weak var DiskPriceSwith: UISwitch!
    
    
    // результаты
    @IBOutlet weak var PriceBase: UILabel!
    @IBOutlet weak var PriceCarKit: UILabel!
    @IBOutlet weak var DicountCarKit: UILabel!
    @IBOutlet weak var PriceTotal: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func switchChange(_ sender: UISwitch) {
        
        let setting = sender.isOn
        MatsPriceSwitch.setOn(setting,animated: true)
        
        //print("\(sender)")
        //print("\(MatsPriceSwitch.isOn)")
    }
    
    
    
    
    @IBAction func okButton(_ sender: Any) {
        
        // print("Вошли в метод")
        
        
        let baseSum: Int = 440700
        let discountPercent: Int = 10

        let priceCarKit = self.carkit.CarKitSum()
        let discountSum = priceCarKit/discountPercent
        let priceTotal = baseSum + priceCarKit - discountSum
        
        self.PriceBase.text =  "Цена в выбранной комплектации: " + "\(baseSum)р"
        self.PriceCarKit.text =  "В том числе доп. оборудованиеена: " + "\(priceCarKit)р"
        self.DicountCarKit.text =  "Скидка на доп. оборудование \(discountPercent)%: " + "\(discountSum)р"
        self.PriceTotal.text =  "ИТОГО: " + "\(priceTotal)р"
        
        
    }
    

}
