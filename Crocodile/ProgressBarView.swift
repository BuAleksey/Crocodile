//
//  ProgressBarView.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct ProgressBarView: View {
    @Binding var counter: Int
    
    private let timer = Timer
        .publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color.clear)
                .frame(width: 250, height: 250)
                .overlay(
                    Circle().trim(from:0, to: progress())
                        .stroke(
                            style: StrokeStyle(
                                lineWidth: 15,
                                lineCap: .round,
                                lineJoin:.round
                            )
                    )
                        .foregroundColor(
                            (completed() ? .finishColor : .fillingLineColor)
                    ).animation(
                        .easeInOut(duration: 0.2)
                    )
            )
        }
        .onReceive(timer) { time in
            if (self.counter < 5) {
                self.counter += 1
            }
        }
    }
    
    private func completed() -> Bool {
        progress() == 1
    }
    
    private func progress() -> CGFloat {
        CGFloat(counter) / CGFloat(5)
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(counter: .constant(0))
    }
}
