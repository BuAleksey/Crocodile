//
//  ProgressBarView.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct ProgressBarView: View {
    @EnvironmentObject private var timerManager: TimerManager
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color.clear)
                .frame(width: 250, height: 250)
                .overlay(
                    Circle()
                        .trim(from:0, to: timerManager.progress)
                        .stroke(
                            style: StrokeStyle(
                                lineWidth: 15,
                                lineCap: .round,
                                lineJoin:.round
                            )
                        )
                        .foregroundColor(
                            (timerManager.completed() ? .finishColor : .fillingLineColor)
                        )
                        .animation(.easeInOut(duration: 0.2), value: 1)
                )
        }
    }
}
