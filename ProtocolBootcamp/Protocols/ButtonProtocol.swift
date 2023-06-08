//
//  ButtonTextProtocol.swift
//  ProtocolBootcamp
//
//  Created by Kaushal Kumbagowdana on 6/8/23.
//

import Foundation


/*
 Unused Protocol but used to learn protocol inheritence
*/

protocol ButtonTextProtocol {
    var buttonText: String { get }
}

protocol ButtonPressedProtocol {
    func buttonPress()
}

protocol ButtonCombinedProtocol: ButtonTextProtocol, ButtonPressedProtocol {
}

class Button: ButtonTextProtocol, ButtonPressedProtocol {
    var buttonText: String = "Protocol Inheritence"
    
    func buttonPress() {
        print("wow")
    }
}

class ButtonV2: ButtonCombinedProtocol {
    var buttonText: String = "Protocol Inheritence 2"
    
    func buttonPress() {
        print("wow wow")
    }
}
