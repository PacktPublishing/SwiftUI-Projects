//
//  ViewLayoutZStackAlignment.swift
//  SwiftUIBasics
//
//  Created by Craig Clayton on 10/3/20.
//

import SwiftUI

struct ViewLayoutZStackAlignment: View {
    var body: some View {
        ZStack(alignment:Alignment(horizontal: .trailing, vertical: .top)) {
            Color.black
                .edgesIgnoringSafeArea(.all)

            Text("Another Example")
                .foregroundColor(.white)
                .offset(y: 25)
            
            Text("Craig Clayton")
                .foregroundColor(.white)
                .offset(y: 50)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 25)
        }
    }
}

struct ViewLayoutZStackAlignment_Previews: PreviewProvider {
    static var previews: some View {
        ViewLayoutZStackAlignment()
    }
}
