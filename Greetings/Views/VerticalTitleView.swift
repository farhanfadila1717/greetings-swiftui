//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Farhan Fadila on 31/10/26.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "programmingRecipes"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingTextView(subtitle: $subtitle)
          
            RotatedableCircleView()
            Spacer()
        }.padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
