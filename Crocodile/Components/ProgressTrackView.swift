//
//  ProgressTrackView.swift
//  Crocodile
//
//  Created by Buba on 11.02.2023.
//

import SwiftUI

struct ProgressTrackView: View {
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 250, height: 250)
            .overlay(
                Circle().stroke(Color.emptyLineColor, lineWidth: 20)
            )
    }
}
