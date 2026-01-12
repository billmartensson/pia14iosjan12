//
//  pia14iosjan12Tests.swift
//  pia14iosjan12Tests
//
//  Created by BillU on 2026-01-12.
//

import Testing
@testable import pia14iosjan12

struct pia14iosjan12Tests {

    
    
    
    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

    @Test func letstest() {
        //#expect(1 + 1 == 9)
        
        let mathcode = MathCode()
        
        #expect(mathcode.doadd(number1text: "1", number2text: "1") == "2")
        #expect(mathcode.doadd(number1text: "1", number2text: "0") == "1")
        
        #expect(mathcode.doadd(number1text: "", number2text: "") == "")
        #expect(mathcode.doadd(number1text: "x", number2text: "1") == "")
        #expect(mathcode.doadd(number1text: "1", number2text: "x") == "")

        #expect(mathcode.doadd(number1text: "99", number2text: "2") == "100")
        #expect(mathcode.doadd(number1text: "2", number2text: "99") == "100")

    }
 
    @Test func letstestminus() {
        let mathcode = MathCode()
        
        #expect(mathcode.dominus(number1text: "5", number2text: "1") == "4")
        #expect(mathcode.dominus(number1text: "x", number2text: "1") == "")
        #expect(mathcode.dominus(number1text: "1", number2text: "x") == "")
        #expect(mathcode.dominus(number1text: "1", number2text: "5") == "0")

        
    }
    
    @Test func letstestmulti() {
        let mathcode = MathCode()
        
        #expect(mathcode.domulti(number1text: "2", number2text: "2") == "4")
    }
}
