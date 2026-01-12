//
//  ContentView.swift
//  pia14iosjan12
//
//  Created by BillU on 2026-01-12.
//

import SwiftUI
import Playgrounds
import MapKit

struct ContentView: View {
    
    /// First textfield number
    @State var number1text = ""
    
    /// Second textfield number
    @State var number2text = ""
    
    /// The result text
    @State var resulttext = ""

    @State var showerror = false
    
    var body: some View {
        VStack {
            
            if showerror {
                Text("ERROR")
            }
            
            TextField("Number 1", text: $number1text)

            TextField("Number 2", text: $number2text)

            Button("Add") {
                resulttext = MathCode().doadd(number1text: number1text, number2text: number2text)
                
                if resulttext == "" {
                    showerror = true
                } else {
                    showerror = false
                }
            }
            
            Text(resulttext)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

#Playground {
    let mathcode = MathCode()
    
    let res1 = mathcode.doadd(number1text: "1", number2text: "2")
    
    let res2 = mathcode.doadd(number1text: "1", number2text: "x")

    let res3 = mathcode.doadd(number1text: "99", number2text: "99")

    let latitude = 37.768552
    let longitude = -122.481616
    let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
}
