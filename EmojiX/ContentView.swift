//
//  ContentView.swift
//  EmojiX
//
//  Created by Ashish Langhe on 02/11/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😺, 🎃, 👻, 💀, 🤖, 👿, 💩, 👽, 🧛, 🧙🏻, 🥷🏻, 🧟‍, 🦹🏼, 🧌, 👩🏻‍🎤
}

struct ContentView: View {
    @State var selection: Emoji = .🎃
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Emoji-X")
                    .font(.system(size: 55))
                Spacer()
                Text(selection.rawValue)
                    .font(.system(size: 250))
                Text("Halloween Character")
                    .font(.system(size: 30))
                Spacer()
                Text("Select Emoji")
                    .font(.system(size: 20))
                    Picker("Select Emoji", selection: $selection) {
                        ForEach(Emoji.allCases, id: \.self) { emoji in
                            Text(emoji.rawValue)
                           }
                    }
                    .pickerStyle(.wheel)
                    .font(.system(size: 80))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
