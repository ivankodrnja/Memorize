//
//  ContentView.swift
//  Memorize
//
//  Created by Ivan Kodrnja on 13.11.2022..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct CardView: View {
   @State var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                
                Text("✈️")
                    .foregroundColor(Color.orange)
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
            }
                
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
