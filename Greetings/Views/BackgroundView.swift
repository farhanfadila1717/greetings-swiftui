//
//  BackgroundView.swift
//  Greetings
//
//  Created by Farhan Fadila on 22/10/26.
//

import SwiftUI

/// This is the background view
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .myBlue1,
            .myBlue2,
        ], startPoint: .topLeading, endPoint: .bottomTrailing)
        .opacity(1)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
