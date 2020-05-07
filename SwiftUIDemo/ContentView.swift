//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by junhyuk on 2020/05/07.
//  Copyright © 2020 junhyuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Slider(value: $rotation, in: 0 ... 360, step: 0.1)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
