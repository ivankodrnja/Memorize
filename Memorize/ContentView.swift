//
//  ContentView.swift
//  Memorize
//
//  Created by Ivan Kodrnja on 13.11.2022..
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🚓", "🚆", "🚜", "🚃", "🚒", "🚌"]
   @State var emojiCount = 4
    
    var body: some View {
        VStack{
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 90))]){
                    ForEach(emojis[0..<emojiCount], id: \.self){ emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                    
                }
            }
            .foregroundColor(.red)
            
            Spacer()
            HStack{
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
         }
        .padding(.horizontal)
        
        
        
    }
    
    var remove: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
            
        }
    }
    
    var add: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
            
        }
    }
}

struct CardView: View {
    var content: String
   @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            
            if isFaceUp {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(lineWidth: 3)
                
                Text(content)
                    .font(.largeTitle)
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
