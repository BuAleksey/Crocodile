//
//  Timer.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct MainView: View {
    @State private var wordLabelIsHidden = false
    @EnvironmentObject var timerManager: TimerManager
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                if wordLabelIsHidden {
                    WordView()
                } else {
                    Text("  ")
                        .font(.custom("Avenir Next", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.textColor)
                }
                
                Spacer()
                
                ZStack{
                    ProgressTrackView()
                    ProgressBarView()
                    ClockView()
                }
                
                Spacer()
                StartButtonView(wordLabelIsHidden: $wordLabelIsHidden)
                Spacer()
            }
            .onReceive(timerManager.timer) { _ in
                timerManager.receiveTimerUpdate()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
