//
//  ClockView.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct ClockView: View {
    var counter: Int
    
    var body: some View {
        VStack {
            Text(counterToMinutes())
                .font(.custom("Avenir Next", size: 60))
                .foregroundColor(Color.textColor)
                .fontWeight(.black)
        }
    }
    
    func counterToMinutes() -> String {
        let currentTime = 60 - counter
        let seconds = currentTime % 60
        let minutes = Int(currentTime / 60)
        
        if currentTime != 0 {
            return "\(minutes):\(seconds < 10 ? "0" : "")\(seconds)"
        } else {
            return "loss"
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView(counter: 0)
    }
}
