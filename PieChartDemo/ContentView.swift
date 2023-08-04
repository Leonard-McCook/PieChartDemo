//
//  ContentView.swift
//  PieChartDemo
//
//  Created by Leonard McCook-Carr on 8/4/23.
//

import SwiftUI
import Charts

struct ChartData: Identifiable, Plottable {
    init?(primitivePlottable: Int) {
        self.primitivePlottable = primitivePlottable
        self.color = .blue
    }
    
    init?(primitivePlottable: Int, color: Color) {
        self.primitivePlottable = primitivePlottable
        self.color = color
    }
    
    var id = UUID()
    let primitivePlottable: Int
    let color: Color
        
}

let data: [ChartData] = [
    .init(primitivePlottable: 12, color: .red),
    .init(primitivePlottable: 6, color: .blue),
    .init(primitivePlottable: 32, color: .orange),
    .init(primitivePlottable: 11, color: .green),
    .init(primitivePlottable: 38, color: .purple),
    .init(primitivePlottable: 18, color: .pink),
    .init(primitivePlottable: 7, color: .yellow),
    
].compactMap({ $0 })


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Chart(data) {Item in
                    
                }
            }
            .navigationTitle("Pie Chart")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
