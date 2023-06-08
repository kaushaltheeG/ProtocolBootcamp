//
//  ProtocolView.swift
//  ProtocolBootcamp
//
//  Created by Kaushal Kumbagowdana on 6/8/23.
//

import SwiftUI

struct ProtocolView: View {
    var colorTheme: ColorThemeProtocol
    
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



struct ProtocolView_Previews: PreviewProvider {
    static var previews: some View {
        ProtocolView(colorTheme: DefaultColorTheme())
    }
}
