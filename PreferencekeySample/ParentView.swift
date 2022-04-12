//
//  ContentView.swift
//  PreferencekeySample
//
//  Created by Etsushi Otani on 2022/04/10.
//

import SwiftUI

struct ParentView: View {
    @State private var grandChildViewFrame: CGRect = CGRect()
    
    var body: some View {
        ZStack(alignment: .center) {
            ChildView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .onPreferenceChange(FramePreferenceKey.self, perform: { frame in
                    grandChildViewFrame = frame
                })
            Text(grandChildViewFrame.debugDescription)
                .foregroundColor(.white)
        }
    }
}

