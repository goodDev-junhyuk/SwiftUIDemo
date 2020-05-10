//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by junhyuk on 2020/05/07.
//  Copyright © 2020 junhyuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.black, .red, .green, .blue]
    var colorNames = ["Black", "Red", "Green", "Blue"]
    
    @State private var colorIndex = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
    
    var body: some View {
        VStack {
        
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(self.rotation))
                .animation(.easeInOut(duration: 5))
                .foregroundColor(self.colors[self.colorIndex])
            Slider(value: $rotation, in: 0 ... 360, step: 0.1)
            
            TextField("Enter text here", text: $text).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach (0 ..< colorNames.count) {
                    Text(self.colorNames[$0]).foregroundColor(self.colors[$0])
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
