//
//  OuterChartView.swift
//  MusicApp
//
//  Created by Matthew Low on 2024-06-30.
//

import SwiftUI

struct OuterChartView: View {
    @State private var numbers: [Double] = [1,2,3,4,2,4,6,5,8,9,6,10, 2, 2, 2,2,2,2,2]
    var body: some View {
           let occurrences = countOccurrences(of: numbers)
           
           VStack {
               ChartView(data: occurrences)
           }
       }
}

#Preview {
    OuterChartView()
}
