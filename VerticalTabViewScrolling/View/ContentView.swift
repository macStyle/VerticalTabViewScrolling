//
//  ContentView.swift
//  VerticalTabiViewScrolling
//
//  Created by Adam Jemni on 10/26/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var post : [Post] = postData
    
    // MARK: - BODY
    
    var body: some View {
        
        GeometryReader { proxy in
            
            TabView {
                ForEach(post) { item in
                    PostView(post: item)
                }
                .rotationEffect(.degrees(-90))
                .frame(
                    width: proxy.size.width,
                    height: proxy.size.height
                )
            }
            .frame(
                width: proxy.size.height,
                height: proxy.size.width
            )
            .rotationEffect(.degrees(90), anchor: .topLeading)
            .offset(x: proxy.size.width)
            .tabViewStyle(
                PageTabViewStyle(indexDisplayMode: .never)
            )
        }
        .ignoresSafeArea()
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
