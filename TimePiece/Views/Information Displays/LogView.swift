//
//  LogView.swift
//  TimePiece
//
//  Created by Alexey Primechaev on 4/6/20.
//  Copyright © 2020 Alexey Primechaev. All rights reserved.
//

import SwiftUI

struct LogView: View {
    
    @ObservedObject var logItem = LogItem()
    
    var body: some View {
        
        VStack(spacing: 0) {
            Spacer().frame(height: 7)
            HStack(spacing: 0) {
                Spacer().frame(width: 28)
                Text(logItem.title == "" ? "Timer ⏱" : logItem.title)
                Spacer()
                Text("2 Mins").opacity(0.5)
                Spacer().frame(width: 28)
            }
            Spacer().frame(height: 7)
            HStack(spacing: 0) {
                Spacer().frame(width: 28)
                Text(TimerItem.currentTimeFormatter.string(from: logItem.timeStarted))
                Spacer().frame(width: 14)
                Text(TimerItem.currentTimeFormatter.string(from: logItem.timeFinished))
                Spacer()
            }.opacity(0.5)
            Spacer().frame(height: 14)
        }.smallTitle()
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}