//
//  MessagesView.swift
//  Greetings
//
//  Created by Farhan Fadila on 22/10/26.
//

import SwiftUI

struct MessagesView: View {
    let items: [DataItemModel] = [
        DataItemModel(text: "Hello there!", color: .green),
        DataItemModel(text: "Welcome to Swift Programming language!", color: .purple),
        DataItemModel(text: "Hello there!", color: .blue),
        DataItemModel(text: "Hello there!", color: .pink),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(items) {item in TextView(text: item.text, color: item.color)}
        }
    }
}

#Preview {
    MessagesView()
}
