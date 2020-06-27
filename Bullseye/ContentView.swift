//
//  ContentView.swift
//  Bullseye
//
//  Created by zalukana on 26.6.2020.
//  Copyright © 2020 zalukana. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to my first app!")
                    .fontWeight(.black).foregroundColor(.green)
            }
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
