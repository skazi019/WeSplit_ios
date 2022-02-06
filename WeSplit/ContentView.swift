//
//  ContentView.swift
//  WeSplit
//
//  Created by Kaushal Sharma on 04/02/22.
//

import SwiftUI

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}

struct ContentView: View {
    @State private var checkAmount: Double = 0.0
    @State private var numberOfPeople: Int = 2
    @State private var tipPercentage: Int = 20
    
    let tipPercentages: [Int] = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, formatter: NumberFormatter.currency)
            }
            
            Section {
                Text(checkAmount, formatter: NumberFormatter.currency)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
