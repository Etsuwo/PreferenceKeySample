//
//  ChildView.swift
//  PreferencekeySample
//
//  Created by Etsushi Otani on 2022/04/11.
//

import SwiftUI

struct ChildView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 100) // テキトーな余白
            HStack {
                Spacer()
                    .frame(width: 50)
                GrandChildView()
                Spacer()
                    .frame(width: 50)
                
            }
            Spacer()
                .frame(height: 100)
        }
    }
}
