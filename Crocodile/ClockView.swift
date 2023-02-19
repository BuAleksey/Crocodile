//
//  ClockView.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct ClockView: View {
    @EnvironmentObject var timerManager: TimerManager
    
    var body: some View {
        VStack {
            Text(timerManager.timeFormatter)
                .font(.custom("Avenir Next", size: 60))
                .foregroundColor(timerManager.completed() ? .finishColor : .textColor)
                .fontWeight(.black)
        }
    }
}

struct ClockView_Previews: PreviewProvider {
    static var previews: some View {
        ClockView()
    }
}
