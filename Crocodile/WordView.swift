//
//  WordView.swift
//  Crocodile
//
//  Created by Buba on 12.02.2023.
//

import SwiftUI

struct WordView: View {
    
    var body: some View {
        Text(DataStore().words.first!)
            .font(.custom("Avenir Next", size: 30))
            .fontWeight(.bold)
            .foregroundColor(Color.textColor)
    }
}

struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView()
    }
}
