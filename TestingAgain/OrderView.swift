//
//  OrderView.swift
//  Learn Swift UI
//
//  Created by Hector De Diego on 15/10/19.
//  Copyright © 2019 dediego. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    
    let instructions = """
- Tap place order below, then:
- Pick an item in a single Picker view
- Press back to come back to this screen
    
The green ones will work OK.

The red one will crash when we return to this screen after picking an item.
"""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text(instructions)) {
                    NavigationLink(destination: CheckoutView()) {
                        Text("Place Order")
                    }
                }
            }
            .navigationBarTitle("Order")
            .listStyle(GroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    
    static var previews: some View {
        OrderView()
    }
}
