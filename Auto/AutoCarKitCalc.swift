//
//  AutoCarKitCalc.swift
//  Auto
//
//  Created by Павел Музычкин on 15.07.17.
//  Copyright © 2017 MPA. All rights reserved.
//

import Foundation

struct CarKit {
    
    let matsSum: Int
    let protectSum: Int
    let winterSum: Int
    let diskSum: Int
    let discountPercent: Double

    func CarKitSum()->Int {
        
        var carKitSum: Int = 0
        
        //   switchChange.isOn == true  ? carKitSum += self.matsSum : carKitSum += 0
        
        
   
        /* matsSwitch.setOn
         protectSwitch.setOn
       winterSwith.setOn
       diskSwitch.setOn
         */

      // нужно суммировать не все, а только если преключатель установлен 
        // но как это узнать в модели
        
        
     return (self.matsSum + self.protectSum + self.winterSum + self.diskSum)
    }
    
    func CarWithoutDiscountSum(percent: Double)->Int {
        let carKitSum = self.CarKitSum()
        return carKitSum - Int(round(Double(carKitSum) * percent / 100.0))
    }
    
}
