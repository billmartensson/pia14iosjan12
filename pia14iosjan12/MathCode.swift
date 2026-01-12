//
//  MathCode.swift
//  pia14iosjan12
//
//  Created by BillU on 2026-01-12.
//

import Foundation

class MathCode {
    
    /// Adds numbers
    /// - Parameters:
    ///     - number1text: The **first** number
    ///     - number2text: The **second** number
    /// - Returns: The result
    func doadd(number1text : String, number2text : String) -> String{
        let nr1 = Int(number1text)
        let nr2 = Int(number2text)

        if nr1 == nil {
            return ""
        }
        if nr2 == nil {
            return ""
        }

        
        var result = nr1! + nr2!
        
        if result > 100 {
            result = 100
        }
        
        return String(result)
    }
    
    
    /// Do minus
    /// - Parameters:
    ///   - nr1: Number one
    ///   - nr2: Number two
    /// - Returns: The result
    func dominus(nr1 : String, nr2: String) -> String {
        return ""
    }
    
}
