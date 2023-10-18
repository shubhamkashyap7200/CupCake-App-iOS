//
//  AddressView.swift
//  CupCake App iOS
//
//  Created by Shubham on 10/18/23.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Your name", text: $order.name)
                TextField("Your address", text: $order.streetAddress)
                TextField("Your city", text: $order.city)
                TextField("Your zip", text: $order.zip)
            } header: {
                Text("Address details")
            }
            
            Section {
                NavigationLink {
                    CheckoutView(order: order)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        
        
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Delivery details")
    }
}

#Preview {
    NavigationStack {
        AddressView(order: Order())
    }
}
