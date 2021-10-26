//
//  PostView.swift
//  VerticalTabiViewScrolling
//
//  Created by Adam Jemni on 10/26/21.
//

import SwiftUI

struct PostView: View {
    
    // MARK: - PROPERTIES

    var post: Post
    
    // MARK: - BODY

    var body: some View {
        
        Image(post.image)
            .resizable()
            .scaledToFill()
    }
}

// MARK: - PREVIEW

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: postData[4])
    }
}
