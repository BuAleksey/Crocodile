//
//  StartButtonView.swift
//  Crocodile
//
//  Created by Buba on 12.02.2023.
//

import SwiftUI

struct StartButtonView: View {
    @EnvironmentObject private var timerManager: TimerManager
    @Binding var wordLabelIsHidden: Bool
    
    var body: some View {
        Button(action: buttonAction) {
            Text(timerManager.isRunning ? "NEXT" : "START")
                .frame(width: 200)
                .font(.custom("Avenir Next", size: 40))
                .fontWeight(.bold)
                .foregroundColor(.textColor)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .tint(.emptyLineColor)
    }
    
    private func buttonAction() {
        wordLabelIsHidden.toggle()
        timerManager.playAction()
    }
}
