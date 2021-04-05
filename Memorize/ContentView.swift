//
//  ContentView.swift
//  Memorize
//
//  Created by Alimjan Qadir on 2021/4/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4){ index in
                CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.orange)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 25.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
