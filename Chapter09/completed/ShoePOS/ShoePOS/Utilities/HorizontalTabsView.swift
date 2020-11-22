//
//  HorizontalTabView.swift
//  ShoePOS
//
//  Created by Craig Clayton on 11/8/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct TabItem {
    let name:String
    let index:String
}


extension HorizontalAlignment {
    private enum UnderlineLeading: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.leading]
        }
    }

    static let underlineLeading = HorizontalAlignment(UnderlineLeading.self)
}

struct WidthPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat(0)
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}


struct HorizontalTabsView : View {

    var tabSpacing: CGFloat = 0
    var data:[TabItem]

    @State private var selectedIndex: Int = 0
    @State private var isSelected = false
    @State private var w: [CGFloat] = [0, 0, 0, 0, 0, 0, 0, 0]
    @State var selectedColor: Color = .black

    var body: some View {
        return VStack(alignment: .underlineLeading) {
            HStack {
                ForEach(0..<data.count) { index in
                    Text(self.data[index].name)
                        .custom(font: .demibold, size: 19.0)
                        .foregroundColor(.baseLightBlue)
                        .modifier(TabModifier(activeIndex: self.$selectedIndex, tabIndex: index))
                        .background(TextGeometry())
                        .onPreferenceChange(WidthPreferenceKey.self, perform: {
                            self.w[index] = $0
                            if index == self.$selectedIndex.wrappedValue {
                                print("selected index \(self.$selectedIndex.wrappedValue)")
                                print("index \($0)")
                            }
                        })

                    if index != self.data.count-1 {
                        Spacer()
                    }
                }
            }
            .frame(height: tabSpacing)
            .padding(.horizontal, 5)

            Rectangle()
                .foregroundColor(.baseLightBlue)
                .alignmentGuide(.underlineLeading) { d in d[.leading]  }
                .frame(width: w[selectedIndex],  height: 3)
                .animation(.spring())
                .animation(.easeInOut(duration: 0.25))
        }
    }
}

struct TextGeometry: View {
    var body: some View {
        GeometryReader { geometry in
            return Rectangle()
                .foregroundColor(.clear)
                .preference(key: WidthPreferenceKey.self, value: geometry.size.width)
        }
    }
}

struct TabModifier: ViewModifier {
    @Binding var activeIndex: Int
    let tabIndex: Int

    func body(content: Content) -> some View {
        Group {
            if activeIndex == tabIndex {
                content.alignmentGuide(.underlineLeading) { d in
                    return d[.leading]
                }.onTapGesture { self.activeIndex = self.tabIndex }
            } else {
                content.onTapGesture { self.activeIndex = self.tabIndex }
            }
        }
    }
}
