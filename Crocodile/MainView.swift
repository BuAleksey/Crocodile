//
//  Timer.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct MainView: View {
    @State private var counter = 0
    @State private var wordLabelIsHidden = false
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            VStack{
                Spacer()
                
                if wordLabelIsHidden {
                    WordView()
                } else {
                    Text(" ")
                        .font(.custom("Avenir Next", size: 30))
                        .fontWeight(.bold)
                }
                
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
