//
//  ContentView.swift
//  DistanceConverter
//
//  Created by Kavindu Lakshan Jayathilake on 2023-03-15.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("meters") private var meters = ""
    
    @State private var unit = "<<Unit>>"
    @State private var value = "<<Value>>"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Text("Distance Converter")
                    .font(Font.largeTitle.weight(.bold))
                let textField1 = TextField("Unit in meters", text: $meters)
//                TextField("Unit in meters", text: $meters)
                    textField1.padding()
                    .border(.black, width: 3)
                    .accessibilityIdentifier("Identifier")
                
                let sample = Text("SAMPLE HERE")
                sample.font(Font.body.weight(.bold))
                
                HStack {
                    Button("Ft") {
                        //contvert to ft
                        convertToFT()
                    }
                    .frame(width: 70, height: 45)
                    .foregroundColor(.white)
                    .background(.gray)
                    Button("cm") {
                        //contvert to cm
                        convertToCM()
                    }
                    .frame(width: 70, height: 45)
                    .foregroundColor(.white)
                    .background(Color(hue: 1.0, saturation: 0.632, brightness: 0.906))
                    
                    Button("Yd") {
                        //contvert to Yd
                        convertToYD()
                    }
                    .frame(width: 70, height: 45)
                    .foregroundColor(.white)
                    .background(Color(hue: 0.421, saturation: 0.933, brightness: 0.441))
                    Button("km") {
                        //contvert to km
                        convertToKM()
                    }
                    .frame(width: 70, height: 45)
                    .foregroundColor(.white)
                    .background(Color(hue: 0.832, saturation: 0.903, brightness: 0.444))
                }
                
                Text("The Distance in \(unit) is \(value)")
                    .font(Font.body.weight(.bold))
                
                Image("Mist")
                    .resizable()
                    .scaledToFit()
                
                Button("Reset") {
                    //reset all values
                    reset()
                }
                .frame(width: 70, height: 45)
                .foregroundColor(.white)
                .background(Color(hue: 0.054, saturation: 0.883, brightness: 0.935))
//                .frame(maxHeight: .infinity, alignment: .bottom)
                .frame(height: 200, alignment: .bottom)
            }
            .padding()
        }
    }
    
    func convertToFT() {
        if let a = Double(meters) {
            let convertion = (a * 3.28)
            value = String(format: "%.2f", convertion)
            unit = "Ft"
        }
    }
    
    func convertToCM() {
        if let a = Double(meters) {
            let convertion = (a * 100)
            value = String(format: "%.2f", convertion)
            unit = "cm"
        }
    }
    
    func convertToYD() {
        if let a = Double(meters) {
            let convertion = (a * 1.09)
            value = String(format: "%.2f", convertion)
            unit = "Yd"
        }
    }
    
    func convertToKM() {
        if let a = Double(meters) {
            let convertion = (a * 0.001)
            value = String(format: "%.2f", convertion)
            unit = "km"
        }
    }
    
    func reset() {
        self.unit = "<<Unit>>"
        self.value = "<<Value>>"
//        textField.text = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
