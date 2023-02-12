//
//  StartButtonView.swift
//  Crocodile
//
//  Created by Buba on 12.02.2023.
//

import SwiftUI

struct StartButtonView: View {
    @Binding var wordLabelIsHidden: Bool
    
    var body: some View {
        Button(action: start) {
            Text("START")
                .font(.custom("Avenir Next", size: 40))
                .fontWeight(.bold)
                .foregroundColor(Color.textColor)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .tint(Color.emptyLineColor)
    }
    
    func start() {
        wordLabelIsHidden.toggle()
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView(wordLabelIsHidden: .constant(false))
    }
}
