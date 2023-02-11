//
//  Timer.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct MainView: View {
    @State var counter: Int = 0
    var countTo: Int = 5
    let timer = Timer
        .publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        VStack{
            ZStack{
                Color.backgroundColor
                    .ignoresSafeArea()
                ProgressTrackView()
                ProgressBarView(counter: counter, countTo: countTo)
                ClockView(counter: counter, countTo: countTo)
            }
        }.onReceive(timer) { time in
            if (self.counter < self.countTo) {
                self.counter += 1
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
