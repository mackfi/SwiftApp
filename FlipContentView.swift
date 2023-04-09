//
//  FlipContentView.swift
//  SunCoin
//
//  Created by MACK FISCHER on 4/8/23.
//

import SwiftUI

struct FlipContentView: View {
    @State private var scale = 1.0
    
    var body: some View {
        Button("Flip Coin") {
            scale += 1
        }
        .scaleEffect(scale)
        .animation(.easeIn, value: scale)
    }
    
}


