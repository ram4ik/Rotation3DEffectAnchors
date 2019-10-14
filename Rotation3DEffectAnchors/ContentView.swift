//
//  ContentView.swift
//  Rotation3DEffectAnchors
//
//  Created by ramil on 14.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees = -45.0
    var body: some View {
        VStack {
            Text("The anchor is the point in which the rotation revolves. By default, it is in the center. You can specify a different anchor.")
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow).opacity(0.7)
                .overlay(Text("Top Anchor (X)").font(.largeTitle).bold())
                .rotation3DEffect(Angle(degrees: degrees), axis: (x: 1.0, y: 0.0, z: 0.0), anchor: .top)
                .border(Color.black)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow).opacity(0.7)
                .overlay(Text("Trailing Anchor (Y)").font(.largeTitle).bold())
                .rotation3DEffect(Angle(degrees: degrees), axis: (x: 0.0, y: 1.0, z: 0.0), anchor: .trailing)
                .border(Color.black)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow).opacity(0.7)
                .overlay(Text("Top Leading Anchor (Z)").font(.largeTitle).bold())
                .rotation3DEffect(Angle(degrees: degrees), axis: (x: 0.0, y: 0.0, z: 1.0), anchor: .topLeading)
                .border(Color.black)
            
            Slider(value: $degrees, in: -180...180, step: 1).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
