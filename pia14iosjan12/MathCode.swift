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
    ///   - number1text: Number one
    ///   - number2text: Number two
    /// - Returns: The result
    func dominus(number1text : String, number2text : String) -> String {
        
        let nr1 = Int(number1text)
        let nr2 = Int(number2text)

        if nr1 == nil {
            return ""
        }
        if nr2 == nil {
            return ""
        }

        
        var result = nr1! - nr2!
        
        if result < 0 {
            result = 0
        }
        
        return String(result)
    }
    
    func domulti(number1text : String, number2text : String) -> String {
        
        return ""
    }
    
}
