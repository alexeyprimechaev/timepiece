//
//  InsightView.swift
//  TimePiece
//
//  Created by Alexey Primechaev on 7/31/20.
//  Copyright © 2020 Alexey Primechaev. All rights reserved.
//

import SwiftUI

struct InsightView: View {
    
    @State var icon = "clock.fill"
    @State var color = Color.black
    @State var title = "Most Spent"
    @State var item = "Eggs"
    @State var value = ""
    @State var subtitle = "Eggs"
    
    var body: some View {
        VStack() {
            HStack(alignment: .top) {
                Image(systemName: icon).font(.system(size: 41)).foregroundColor(color).padding(.top,4)
                Spacer().frame(width: 14)
                VStack(alignment: .leading, spacing: 7) {
                    Text(title).foregroundColor(color).smallTitle()
                    HStack(spacing: 14) {
                        Text(item).smallTitle()
                        Text(value).smallTitle().opacity(0.5)
                    }
                    Text(subtitle).multilineTextAlignment(.leading).secondaryText().opacity(0.5)
                }
                Spacer()
            }.padding(7)
        }
        
    }
}

struct InsightView_Previews: PreviewProvider {
    static var previews: some View {
        InsightView()
    }
}
