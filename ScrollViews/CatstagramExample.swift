//
    // Project: ScrollViews
    //  File: CatsigramExample.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct CatstagramExample: View {
    var body: some View {
        
        Text("Catstagram 2.0")
            .font(.largeTitle)
            .foregroundStyle(.purple)
        ScrollView{
            
            ScrollView(.horizontal){
                HStack {
                    ForEach(1...15, id: \.self){ index in
                        Image(systemName: "cat.fill")
                        
                    }
                }
            }
            .font(.largeTitle)
            
            
            VStack{
                Text("Crunchy Cat")
                    .font(.largeTitle)
                    .padding()
                
                Image("image1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                
                Text("Ethel")
                    .font(.largeTitle)
                    .padding()
                
                Image("image2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                
                Text("Ester")
                    .font(.largeTitle)
                    .padding()
                
                Image("image3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 200)
                
            }
            
        }
    }
}
        
        #Preview {
            CatstagramExample()
        }
