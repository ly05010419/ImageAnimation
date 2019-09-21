//
//  ContentView.swift
//  ImageAnimation
//
//  Created by LiYong on 21.09.19.
//  Copyright © 2019 Liyong. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        
        VStack {
            Text("Cupertino")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(8)
            
            Image("image")
                .frame(width: show ? 414 : 300, height: show ? 600 : 300)
                .clipped()
                .cornerRadius(show ? 0 : 30)
                .shadow(radius: show ? 5 : 30)
//                .blur(radius: show ? 0 : 30)
                .animation(.spring())
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("show")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
