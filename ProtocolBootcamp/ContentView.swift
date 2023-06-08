//
//  ContentView.swift
//  ProtocolBootcamp
//
//  Created by Kaushal Kumbagowdana on 6/8/23.
//

import SwiftUI

struct RandomTheme {
//    @State var selectedTheme: ColorThemeProtocol
    
    let themesDictionary: [Int: ColorThemeProtocol] = [
        1: DefaultColorTheme(),
        2: AlternativeColorTheme(),
        3: AnotherColorTheme()
    ]
    
    func selectRandomTheme() -> ColorThemeProtocol {
        let themeCount = themesDictionary.count
        let randomInt = Int.random(in: 1...themeCount)
        return themesDictionary[randomInt]!
    }
}

struct ContentView: View {
    @State private var clicked: Bool = false
    @State private var selectedTheme: ColorThemeProtocol = RandomTheme().selectRandomTheme()
    
    var body: some View {
        ZStack {
            VStack {
                ProtocolView(colorTheme: selectedTheme)
                Button ("Change Theme", action: {
                    selectedTheme = RandomTheme().selectRandomTheme()
                })
                .frame(alignment: .bottom)
            }

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
