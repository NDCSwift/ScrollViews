//
    // Project: ScrollViews
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct ContentView: View {

    @State private var currentItemID: Int?

       var body: some View {
           VStack {
               Text("Current Item ID: \(currentItemID ?? -1)")
                   .font(.headline)
                   .padding()

               ScrollView(.horizontal) {
                   LazyHStack(spacing: 15) {
                       ForEach(0..<10) { i in
                           RoundedRectangle(cornerRadius: 15.0)
                               .fill(i % 2 == 0 ? Color.cyan.opacity(0.5) : Color.teal.opacity(0.5))
                               .frame(width: 250, height: 180)
                               .overlay(Text("Slide \(i)").font(.title).foregroundColor(.white))
                               .id(i) // Each item needs an ID
                       }
                   }
                   .scrollTargetLayout()
                   .padding(.horizontal)
               }
               .scrollTargetBehavior(.viewAligned)
               .scrollPosition(id: $currentItemID) // Bind to state variable
           }
       }
   }

#Preview {
    ContentView()
}
