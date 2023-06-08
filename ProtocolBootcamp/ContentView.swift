//
//  ContentView.swift
//  ProtocolBootcamp
//
//  Created by Kaushal Kumbagowdana on 6/8/23.
//

import SwiftUI

// set up definitive color theme for the entire app
struct DefaultColorTheme {
    let primary: Color = .gray
    let secondary: Color = .black
    let tertiary: Color = .purple
}

struct ContentView: View {
    
    let colorTheme: DefaultColorTheme = DefaultColorTheme()
    
    var body: some View {
        ZStack {
            colorTheme.tertiary
                .ignoresSafeArea()
            Text("Protocols are awesome")
                .font(.headline)
                .foregroundColor(colorTheme.secondary)
                .padding()
                .background(colorTheme.primary)
                .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
