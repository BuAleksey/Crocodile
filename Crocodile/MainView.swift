//
//  Timer.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct MainView: View {
    @State var counter = 0
    @State var wordLabelIsHidden = true
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            VStack{
                Spacer()
                WordView()
                Spacer()
                ZStack{
                    ProgressTrackView()
                    ProgressBarView(counter: $counter)
                    ClockView(counter: counter)
                }
                Spacer()
                StartButtonView(wordLabelIsHidden: $wordLabelIsHidden)
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
