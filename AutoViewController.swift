//
//  AutoViewController.swift
//  Auto
//
//  Created by Павел Музычкин on 13.07.17.
//  Copyright © 2017 MPA. All rights reserved.
//

import UIKit

class AutoViewController: UIViewController {
    
    let baseSum: Double = 440700
    let matsSum: Double = 2500
    let protectSum: Double = 1000
    let winterSum: Double = 30000
    let diskSum: Double = 50000
    let discountPercent: Double = 10

    // переключатели
    @IBOutlet weak var MatsPriceSwitch: UISwitch!
    @IBOutlet weak var ProtectPriceSwitch: UISwitch!
    @IBOutlet weak var WinterPriceSwitch: UISwitch!
    // опечатка @IBOutlet weak var DiskPriceSwith: UISwitch!
    
    @IBOutlet weak var DiskPriceSwitch: UISwitch!
    
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
        
        // пересчет делается по кнопке ОК
        print("\(sender)")
        print("\(MatsPriceSwitch.isOn)")
        print("\(ProtectPriceSwitch.isOn)")
        print("\(WinterPriceSwitch.isOn)")
        print("\(DiskPriceSwitch.isOn)")
    }
    
    @IBAction func okButton(_ sender: Any) {
        
        // пересчет делается при нажатии кнопки ОК,
        // иначе она не нужна на экране
        
        // print("Вошли в метод")
        var sumCarKit: Double = 0
        
        if MatsPriceSwitch.isOn == true {
            sumCarKit += matsSum
        }
        
        if ProtectPriceSwitch.isOn == true {
            sumCarKit += protectSum
        }
        
        if WinterPriceSwitch.isOn == true {
            sumCarKit += winterSum
        }
        
        if DiskPriceSwitch.isOn == true {
            sumCarKit += diskSum
        }
        
        
        let discountSum = sumCarKit / discountPercent
        
        let priceTotal = baseSum + sumCarKit - discountSum
        
        self.PriceBase.text =  "Базовая цена: " + "\(baseSum)р"
        self.PriceCarKit.text =  " Дополнительное оборудование: " + "\(sumCarKit)р"
        self.DicountCarKit.text =  "Скидка на доп. оборудование \(discountPercent)%: " + "\(discountSum)р"
        self.PriceTotal.text =  "Цена в выбранной комплектации: " + "\(priceTotal)р"
        
        
    }
    

}
