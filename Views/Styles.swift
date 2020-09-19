//
//  Styles.swift
//  TimerPlus
//
//  Created by Alexey Primechaev on 1/27/20.
//  Copyright © 2020 Alexey Primechaev. All rights reserved.
//

import SwiftUI

//MARK: - Text Styles


public enum FontSize {
    case title, smallTitle, secondaryText
}

//MARK: Small Title Style

struct FontStyle: ViewModifier {
    
    @EnvironmentObject var settings: Settings
    
    @State var fontSize: FontSize
    
    @State var changeDesign = true
    
    func body(content: Content) -> some View {
        content
            
            .font(fontSize == .title ? Font.system(.largeTitle, design: changeDesign ? settings.fontDesign : .default).bold() : fontSize == .smallTitle ? Font.system(.headline, design: changeDesign ? settings.fontDesign : .default) : .system(size: 14, weight: .medium, design: changeDesign ? settings.fontDesign : .default))
            .saturation(settings.isMonochrome ? 0 : 1)
            
    }
}

//MARK: Application Functions
extension View {
    
    func fontSize(_ size: FontSize = .title, changeDesign: Bool = true) -> some View {
        return self.modifier(FontStyle(fontSize: size))
    }
    

}


//MARK: - Button Styles
struct RegularButtonStyle: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.96 : 1.0)
            .opacity(configuration.isPressed ? 0.5 : 1.0)
    }

}