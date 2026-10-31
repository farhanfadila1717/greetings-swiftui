//
//  LanscapeGreetingsView.swift
//  Greetings
//
//  Created by Farhan Fadila on 31/10/26.
//

import SwiftUI

struct LanscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack  {
                VerticalTitleView()
                
                Spacer()
    
                MessagesView()
            }.padding()
        }
    }
}

#Preview {
    LanscapeGreetingsView()
}
