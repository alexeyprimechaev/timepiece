//
//  SubscriptionPointView.swift
//  TimePiece (iOS)
//
//  Created by Alexey Primechaev on 2/22/21.
//  Copyright © 2021 Alexey Primechaev. All rights reserved.
//

import SwiftUI

enum PointSize {
    case small, medium, large
}

struct SubscriptionPointView: View {
    
    @State var style: PointSize = .small
    
    @State private var hasAppeared = false
    
    @State var color = Color.primary
    @State var image = "ellipsis.circle.fill"
    @State var isSFSymbol = true
    @State var text = "Show Milliseconds"
    @State var images = [String]()
    @State var colors = [Color]()
    
    @ViewBuilder
    var body: some View {
        Text("meow")
//        Group {
//            switch style {
//            case .small:
//                VStack(spacing: 14) {
//                    Group {
//                        if isSFSymbol {
//                            Image(systemName: image).foregroundColor(color)
//                        } else {
//                            Image(image)
//                        }
//                    }
//                    .font(Font.system(size: 34, weight: .medium))
//                    .scaleEffect(hasAppeared ? 1 : 0)
//                    .animation(Animation.easeOut(duration: 0.5).delay(Double.random(in: 0...0.2)), value: hasAppeared)
//                    Spacer()
//                }
//            case .medium:
//                VStack {
//                    HStack {
//                        ForEach(images.indices) { i in
//                            if isSFSymbol {
//                                Image(systemName: images[i])
//                                    .foregroundColor(colors[i])
//                                    .font(Font.system(size: 30, weight: .medium))
//                                    .scaleEffect(hasAppeared ? 1 : 0)
//                                    .animation(.easeOut(duration: 0.5).delay(Double.random(in: 0...0.2)), value: hasAppeared)
//                            } else {
//                                Image(images[i])
//                                    .resizable()
//                                    .aspectRatio(1, contentMode: .fit)
//                                    .frame(width: 72, height: 72)
//                                    .scaleEffect(hasAppeared ? 1 : 0)
//                                    .animation(.easeOut(duration: 0.5).delay(Double.random(in: 0...0.2)), value: hasAppeared)
//                            }
//                        }
//                    }
//
//                    Spacer()
//
//                }
//            case .large:
//                VStack {
//                    Spacer()
//                    Text("Artwork").scaleEffect(hasAppeared ? 1 : 0)
//                        .animation(.easeOut(duration: 0.5).delay(Double.random(in: 0...0.2)), value: hasAppeared)
//                    Spacer()
//                }
//            }
//        }
//        .padding(isSFSymbol ? 20 : 6).frame(maxWidth: .infinity, maxHeight: .infinity).background(RoundedRectangle(cornerRadius: 16, style: .continuous).foregroundColor(Color(UIColor.systemGray6))).overlay( Text(text).fontSize(.secondaryText).padding(.bottom, 14).padding(.horizontal, 4).lineLimit(2).multilineTextAlignment(.center), alignment: .bottom)
//        .onAppear {
//            hasAppeared = true
//        }
        
    }
}

struct SubscriptionPointView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionPointView()
    }
}
