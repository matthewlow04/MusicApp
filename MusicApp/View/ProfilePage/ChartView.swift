//
//  ChartView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-30.
//

import SwiftUI
import Charts

struct ChartView: View {
    let data: [Double: Int]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Rating Distribution")
                .font(Font.system(size: 18, weight: .semibold))
                .padding(.bottom, 10)
            
            Chart {
                ForEach(data.keys.sorted(), id: \.self) { key in
                    if let value = data[key] {
                        BarMark(
                            x: .value("Number", key),
                            y: .value("Occurrences", value)
                        )
                        .foregroundStyle(Color.accentColor)

                        .annotation(position: .top) {
                            if(value > 0){
                                Text("\(value)")
                                    .font(.caption)
                                    .foregroundColor(.primary)
                            }
                            
                        }
                    }
                }
            }
            .chartXAxis {
                AxisMarks(values: .stride(by: 1))
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
            .padding()
            .frame(height: 100)
        }
     
    }
}

//#Preview {
//    ChartView()
//}


func countOccurrences(of numbers: [Double]) -> [Double: Int] {
    var counts = [Double: Int]()
    
    for number in stride(from: 1.0, through: 5.0, by: 0.5) {
        counts[number] = 0
    }
    
    for number in numbers {
        if let count = counts[number] {
            counts[number] = count + 1
        }
    }
    
    return counts
}
