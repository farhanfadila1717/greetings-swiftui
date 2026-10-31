//
//  MainView.swift
//  Greetings
//
//  Created by Farhan Fadila on 31/10/26.
//

import SwiftUI

//  Potrait = Compact width, regular height
struct MainView: View {
    @Environment(\.isIPad) var isIPad
    @Environment(\.isPortraitPhone) var isPotraitPhone
    
    var body: some View {
        //        Potrait mode
        if isPotraitPhone || isIPad {
            GreetingsView()
        } else {
            LanscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
