//
//  Timer.swift
//  Crocodile
//
//  Created by Buba on 13.02.2023.
//

import SwiftUI

class TimerManager: ObservableObject {
    @Published var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @Published var counter: CGFloat = 0
    @Published var duration: CGFloat = 60
    
    @Published var isRunning = false
    
    private var selectedMinutes = 0
    private var selectedSeconds = 60
    
    var progress: CGFloat {
        counter / duration
    }
    
    var timeFormatter: String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [.minute, .second]
        formatter.zeroFormattingBehavior = [.pad]
        return formatter.string(from: TimeInterval(duration - counter)) ?? "00:00"
    }
    
    func completed() -> Bool {
        progress == 1
    }
    
    func playAction() {
        isRunning.toggle()
        timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    }
    
    func receiveTimerUpdate() {
        if counter < duration && isRunning {
            counter += 1
        } else {
            isRunning = false
            timeInSeconds()
        }
    }
    
    private func timeInSeconds() {
        let minutes = selectedMinutes * 60
        let seconds = selectedSeconds
        counter = 0
        duration = CGFloat(minutes + seconds)
    }
}
