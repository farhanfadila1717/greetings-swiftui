//
//  GreetingTextView.swift
//  Greetings
//
//  Created by Farhan Fadila on 31/10/26.
//

import SwiftUI

struct GreetingTextView: View {
    @Binding var subtitle: LocalizedStringKey
    
    private let subtitels: [LocalizedStringKey] = [
        "learningHowToBake",
        "programmingRecipes",
        "welcomeToSwiftProgramming"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.title)
                .fontWeight(.semibold)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
        }.onTapGesture {
//                Change subtitle randomly
            withAnimation {
                subtitle = subtitels.randomElement()!
            }
        }
    }
}

#Preview {
    GreetingTextView(subtitle: .constant("Default Value"))
}
