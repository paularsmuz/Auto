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
    
    // let discountSum: Int = 10

   
    
    func CarTotalSum()->Int {
        
     return (self.matsSum + self.protectSum + self.winterSum + self.diskSum)
    }
    
    func CarDiscountSum(percent: Double)->Int {
        let xxx = self.CarTotalSum()
        return Int(round(Double(xxx) * percent / 100.0))
    }

    
    
}
