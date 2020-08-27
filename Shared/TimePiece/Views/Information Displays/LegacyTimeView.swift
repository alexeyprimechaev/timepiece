//
//  TimeView.swift
//  TimerPlus
//
//  Created by Alexey Primechaev on 1/19/20.
//  Copyright © 2020 Alexey Primechaev. All rights reserved.
//

import SwiftUI

struct LegacyTimeView: View {
    
//MARK: - Properties
    
    
    
    //MARK: Dynamic Properties
    @Binding var time: String
    @State var title = LocalizedStringKey("")
    @State var frame = String()
    
//    MARK: Static Properties
    var update: () -> ()?
    
    
//MARK: - View
    var body: some View {
        ZStack(alignment: .topLeading) {
            HStack(alignment: .bottom, spacing: 5) {
                ZStack(alignment: .bottomLeading) {
                    Text(time)
                        .title()
                        .animation(nil)
                    if time.count == 8 {
                        Text("88:88:88")
                        .title()
                        .opacity(0)
                    } else if time.count == 5 {
                        Text("88:88")
                        .title()
                        .opacity(0)
                    } else {
                        Text("88:88:88.88")
                        .title()
                        .opacity(0)
                    }
                    
                }
                Text(title)
                    .smallTitle()
                    .padding(.bottom, 5)
                    .opacity(0.5)
            }
            
        }.padding(7)
    }
}
