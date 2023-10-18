//
//  CheckoutView.swift
//  CupCake App iOS
//
//  Created by Shubham on 10/18/23.
//

import SwiftUI

struct CheckoutView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: "https://hws.dev/img/cupcakes@3x.jpg"), scale: 3) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(height: 233)

                Text("Your total cost is \(order.cost, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))")
                
                Button("Place order") {
                    
                }
                .padding()
                .buttonStyle(.borderedProminent)
            }
        }
        
        .navigationTitle("Checkout")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CheckoutView(order: Order())
    }
}
