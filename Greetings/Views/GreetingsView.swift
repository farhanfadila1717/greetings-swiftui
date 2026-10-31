//
//  ContentView.swift
//  Greetings
//
//  Created by Farhan Fadila on 20/10/26.
//

import SwiftUI


struct GreetingsView: View {
    
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading)  {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }.padding()
        }
    }
}

#Preview {
    GreetingsView()
        .preferredColorScheme(.dark)
}
