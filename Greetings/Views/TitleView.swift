//
//  TitleView.swift
//  Greetings
//
//  Created by Farhan Fadila on 22/10/26.
//

import SwiftUI

struct TitleView: View {
    @State private var subtitle: LocalizedStringKey = "programmingRecipes"
    
    var body: some View {
        HStack {
            GreetingTextView(subtitle: $subtitle)
            Spacer()
            RotatedableCircleView()
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
