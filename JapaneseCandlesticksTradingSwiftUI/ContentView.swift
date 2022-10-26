//
//  ContentView.swift
//  JapaneseCandlesticksTradingSwiftUI
//
//  Created by Kseniya Smirnova on 26.10.22.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    var body: some View {
        VStack {
            Chart {
                ForEach(candleArray) { item in
                    RectangleMark(x: .value("Day", item.mult),
                                  yStart: .value("Low price", item.low),
                                  yEnd: .value("High price", item.high),
                                  width: 2)
                    .opacity(0.5)
                    .foregroundStyle(.gray)
                    
                    RectangleMark(x: .value("Day", item.mult),
                                  yStart: .value("Open price", item.open),
                                  yEnd: .value("Close price", item.close),
                                  width: 10)
                    .foregroundStyle(item.close < item.open ? .red : .green)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
