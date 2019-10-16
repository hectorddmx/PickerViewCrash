//
//  CheckoutView.swift
//  Learn Swift UI
//
//  Created by Hector De Diego on 15/10/19.
//  Copyright © 2019 dediego. All rights reserved.
//

import SwiftUI

enum DeliveryTypes: Int, CaseIterable, Identifiable {
    
    var id: Int { rawValue }
    
    case pickup
    case car
    case helicopter
    
    var textView: some View {
        let _textView: Text
        switch self {
        case .pickup: _textView = Text("Pickup")
        case .car: _textView = Text("Car")
        case .helicopter: _textView = Text("Helicopter")
        }
        return _textView.tag(self.rawValue)
    }
}

struct CheckoutView: View {
    
    @State private var deliveryType: Int = DeliveryTypes.car.rawValue
    
    var deliveryOptions: some View {
        ForEach(DeliveryTypes.allCases.indices) { index in
            DeliveryTypes(rawValue: index)?.textView
        }
    }
    
    var body: some View {
        Form {
            // This one is created with a ForEach and works fine, but is using Segmented pickerStyle
            Picker("Delivery type:", selection: $deliveryType) {
                deliveryOptions
            }
            .pickerStyle(SegmentedPickerStyle())                
            .background(Color.green)
            
            // This one is created one Text view at a time, but is using Default pickerStyle
            Picker(selection: $deliveryType, label: Text("Delivery type:")) {
                DeliveryTypes.pickup.textView
                DeliveryTypes.car.textView
                DeliveryTypes.helicopter.textView
            }
            .pickerStyle(DefaultPickerStyle())
            .background(Color.green)
            
            
            // This one creates it's Picker Text's with a ForEach, it's using Default pickerStyle
            // and it crashes... 😡
            Picker(selection: $deliveryType, label: Text("Delivery type:")) {
                deliveryOptions
            }
            .pickerStyle(DefaultPickerStyle())
            .background(Color.red)
        }
        .navigationBarTitle(Text("Payment"), displayMode: .inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    
    static var previews: some View {
        CheckoutView()
    }
}
