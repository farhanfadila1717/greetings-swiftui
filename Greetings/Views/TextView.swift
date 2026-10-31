//
//  TextView.swift
//  Greetings
//
//  Created by Farhan Fadila on 20/10/26.
//

import SwiftUI

struct TextView: View {
    let text: String
    @State var color: Color
    
    @Environment(\.isIPad) var isIPad
    @Environment(\.isPortraitPhone) var isPotraitPhone
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 139 / 255, green:  207 / 255, blue: 240 / 255),
        Color(red: 1, green: 215 / 255, blue: 0),
    ]
    
    var font: Font {
        isIPad ? .largeTitle : .body
    }
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
//                Randomly change the color
                    color = colors.randomElement() ?? color
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "I'm Farhan", color: .purple)
        TextView(text: "Welcome", color: .pink)
    }
}
