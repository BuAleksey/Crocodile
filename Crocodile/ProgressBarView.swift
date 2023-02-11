//
//  ProgressBarView.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct ProgressBarView: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
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
                        (completed() ? Color.finishColor : Color.fillingLineColor)
                ).animation(
                    .easeInOut(duration: 0.2)
                )
        )
    }
    
    func completed() -> Bool {
        return progress() == 1
    }
    
    func progress() -> CGFloat {
        return (CGFloat(counter) / CGFloat(countTo))
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(counter: 0, countTo: 60)
    }
}
