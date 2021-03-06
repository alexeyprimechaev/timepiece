//
//  InsightView.swift
//  TimePiece
//
//  Created by Alexey Primechaev on 7/31/20.
//  Copyright © 2020 Alexey Primechaev. All rights reserved.
//

import SwiftUI

struct InsightRow: View {
    
    @EnvironmentObject var settings: Settings
    
    @State var icon = "clock.fill"
    @State var color = Color.black
    @State var title = "Most Spent"
    @Binding var item: String
    @Binding var value: String
    @State var showingValue = false
    @State var subtitle = "Eggs"
    
    var body: some View {
        VStack() {
            HStack(alignment: .top) {
                Image(systemName: icon).font(.system(size: 41)).foregroundColor(color).padding(.top,4).saturation(settings.isMonochrome ? 0 : 1)
                Spacer().frame(width: 14)
                VStack(alignment: .leading, spacing: 7) {
                    Text(title).foregroundColor(color).fontSize(.smallTitle)
                    HStack(spacing: 14) {
                        Text(item == "" ? "Timer ⏱" : item).fontSize(.smallTitle)
                        if showingValue {
                            Text(value).fontSize(.smallTitle).opacity(0.5)
                        }
                        
                    }
                    Text(subtitle).multilineTextAlignment(.leading).fontSize(.secondaryText).opacity(0.5)
                }
                Spacer()
            }.padding(7)
        }
        
    }
}
