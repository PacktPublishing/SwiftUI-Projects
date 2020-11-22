//
//  CarInfoDetailView.swift
//  TeslaOrderForm
//
//  Created by Craig Clayton on 2/13/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct CarInfoDetailView: View {
    var body: some View {
        HStack {
            column1
            Spacer()
            column2
            Spacer()
            column3
        }.padding(.top, 15)
    }
    
    var column1: some View {
        VStack(alignment: .leading) {
            Text("Transmission")
                .custom(font: .medium, size: 16)
                .foregroundColor(.baseDarkGray)

            Text("Automatic")
                .custom(font: .medium, size: 22)
        }
    }
    
    var column2: some View {
        VStack(alignment: .leading) {
            Text("Class")
                .custom(font: .medium, size: 16)
                .foregroundColor(.baseDarkGray)

            Text("Luxury")
                .custom(font: .medium, size: 22)
        }
    }
    
    var column3: some View {
        VStack(alignment: .leading) {
            Text("Year")
                .custom(font: .medium, size: 16)
                .foregroundColor(.baseDarkGray)
            Text("2020")
                .custom(font: .medium, size: 22)
        }
    }

}

struct CarInfoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoDetailView()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
