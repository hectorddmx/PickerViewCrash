//
//  OrderView.swift
//  Learn Swift UI
//
//  Created by Hector De Diego on 15/10/19.
//  Copyright © 2019 dediego. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section {
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

#if DEBUG
struct OrderView_Previews: PreviewProvider {
    
    static var previews: some View {
        OrderView()
    }
}
#endif
