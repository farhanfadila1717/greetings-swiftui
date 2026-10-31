//
//  RotatedAbleCircleView.swift
//  Greetings
//
//  Created by Farhan Fadila on 31/10/26.
//

import SwiftUI

struct RotatedableCircleView: View {
    @State var isRotated: Bool = false
    
    let lineWidth: CGFloat = 15
    let diameter: CGFloat = 70
    
    private var angle: Angle {
        isRotated ? .zero : .degrees(360)
    }
    
    private var angularGradient: AngularGradient {
        AngularGradient(
            gradient: Gradient(colors: [.pink, .purple, .blue, .orange, .yellow]),
            center: .center, angle: .zero
        )
    }
    
    var body: some View {
        Circle()
            .strokeBorder(
                angularGradient,
                lineWidth: lineWidth,
            )
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatedableCircleView()
}
