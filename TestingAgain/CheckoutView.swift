//
//  CheckoutView.swift
//  Learn Swift UI
//
//  Created by Hector De Diego on 15/10/19.
//  Copyright © 2019 dediego. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    
    static let paymentTypes = ["Cash", "Credit Card", "iDine Points"]

    @State private var paymentType: Int = 0
        
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(0 ..< Self.paymentTypes.count) { index in
                        Text(Self.paymentTypes[index]).tag(index)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Payment"), displayMode: .inline)
    }
}

#if DEBUG
struct CheckoutView_Previews: PreviewProvider {
    
    static var previews: some View {
        CheckoutView()
    }
}
#endif
