//
//  StepperView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/3/20.
//

import SwiftUI

struct StepperView: View {
    @Binding var items: Dictionary<String, CartItem>
    var item: CartItem
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(6)
                .frame(height: 34)
            
            HStack { // (1)
                Button(action: {
                    items[self.item.size.id]!.quantity -= 1
                   
                    if self.items[self.item.size.id]!.quantity == 0 {
                        self.items[self.item.size.id] = nil
                    }
                }) {  // (2)
                    HStack {
                        Image(systemName: "minus")
                            .font(Font.system(size: 24, weight: .medium))
                            .foregroundColor(.baseLightBlue)
                    }
                    .frame(width: 50, height: 34)
                }
                
                Spacer()  // (3)
                
                Button(action: { items[item.size.id]!.quantity += 1 }) {  // (4)
                    HStack {
                        Image(systemName: "plus")
                            .font(Font.system(size: 24, weight: .medium))
                            .foregroundColor(.baseLightBlue)
                    }
                    .frame(width: 50, height: 34)
                }
            }
            .frame(height: 34)
            .background(Color.baseLightGrey)
            .cornerRadius(6)

            
            
            if let quantity = items[item.size.id]?.quantity {
                Text(quantity == 0 ? "0" : "\(quantity)")
                        .custom(font: .bold, size: 27)
                        .foregroundColor(.baseLightBlue)
            }
        }

    }
}
