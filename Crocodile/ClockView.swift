//
//  ClockView.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct ClockView: View {
    @State private var isLoss = false
    let counter: Int
    
    var body: some View {
        VStack {
            Text(counterToMinutes())
                .font(.custom("Avenir Next", size: 60))
                .foregroundColor(isLoss ? .finishColor : .textColor)
                .fontWeight(.black)
        }
    }
    
    private func counterToMinutes() -> String {
        let currentTime = 5 - counter
        let seconds = currentTime % 60
        let minutes = Int(currentTime / 60)
        
        if currentTime != 0 {
            return "\(minutes):\(seconds < 10 ? "0" : "")\(seconds)"
        } else {
            isLoss.toggle()
            return "loss"
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView(counter: 0)
    }
}
