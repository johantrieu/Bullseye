//
//  ContentView.swift
//  Bullseye
//
//  Created by zalukana on 26.6.2020.
//  Copyright © 2020 zalukana. All rights reserved.
//

import SwiftUI

// Properties
// ==========

// User interface views

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    
    // User interface content and layout
    var body: some View {
        VStack {
            Spacer()
            
            // Target now
            HStack {
                Text("Put the bullseye as close as you can to:")
                Text("100")
            }
            
            Spacer()
            
            // Slider row
            HStack {
            Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
            Text("100")
            }
            
            Spacer()
            // Button
            
            Button(action: {
                print("Button press!")
                self.alertIsVisible = true
            }) {
                Text("Hit Me")
            }
            .alert(isPresented: self.$alertIsVisible) {
                Alert(title: Text("Hello there"),
                      message: Text("This is my first pop-up."),
                      dismissButton: .default(Text("Awesome!")))
            }
            Spacer()
            
            // Score row
                
            HStack {
                Button(action: {}) {
                    Text("Start Over")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action: {}) {
                    Text("Info")
                }
            }
            .padding(.bottom, 20)
        }
    }
    // Methods
    // =======
}

// Preview
// =======

#if DEBUG

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
