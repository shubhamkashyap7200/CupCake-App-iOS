//
//  ContentView.swift
//  CupCake App iOS
//
//  Created by Shubham on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: Propeties
    @StateObject var order = Order()
    
    // MARK: Body
    var body: some View {
        NavigationStack {
            Form {
                // MARK: Section for order flavour and number of scoops
                Section {
                    Picker("Pick your flavor", selection: $order.type) {
                        ForEach(Order.types.indices) {
                            Text(Order.types[$0])
                        }
                    }
                    
                    Stepper("Number of cakes: \(order.quantity)", value: $order.quantity, in: 3...20, step: 1)
                } header: {
                    Text("Pick options")
                }
                
                // MARK: Section for special request
                Section {
                    Toggle("Any special requests?", isOn: $order.specialRequestEnabled.animation())
                    
                    if order.specialRequestEnabled {
                        Toggle("Add extra frosting", isOn: $order.extraFrosting)
                        Toggle("Add sprinkles", isOn: $order.addSprinkles)
                    }
                } header: {
                    Text("Special Requests")
                }

                // MARK: Section for navigation to address view
                Section {
                    NavigationLink {
                        AddressView(order: order)
                    } label: {
                        Text("Delivery Details")
                    }
                }
            }
            
            .navigationTitle("Cupcake Ordering")
        }
    }
    
    
}

#Preview {
    ContentView()
}

