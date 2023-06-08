//
//  ColorThemeProtocol.swift
//  ProtocolBootcamp
//
//  Created by Kaushal Kumbagowdana on 6/8/23.
//

import Foundation
import SwiftUI

/*
 Cannot use "let" within it. Must use "var"
    get = only allows you to set the var when initalizing; once initliazed, cannot change the value
    set = allows you ot change the value
 */
protocol ColorThemeProtocol {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}


// set up definitive color theme for the entire app
struct DefaultColorTheme: ColorThemeProtocol {
    let primary: Color = .gray
    let secondary: Color = .black
    let tertiary: Color = .purple
}

struct AlternativeColorTheme: ColorThemeProtocol {
    let primary: Color = .orange
    let secondary: Color = .white
    let tertiary: Color = .red
}

struct AnotherColorTheme: ColorThemeProtocol {
    var primary: Color  = .brown
    
    var secondary: Color = .green
    
    var tertiary: Color = .blue
}
