//
//  SubView.swift
//  PreferencekeySample
//
//  Created by Etsushi Otani on 2022/04/10.
//

import SwiftUI

struct GrandChildView: View {
    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .preference(key: FramePreferenceKey.self, value: geometry.frame(in: .global))
        }
        
    }
}

struct FramePreferenceKey: PreferenceKey {
    static var defaultValue: CGRect = CGRect()
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
