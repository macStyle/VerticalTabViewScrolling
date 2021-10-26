//
//  GridItenView.swift
//  VerticalTabiViewScrolling
//
//  Created by Adam Jemni on 10/26/21.
//

import SwiftUI

struct GridItemView: View {
    
    // MARK: - PROPERTIES

    var post: Post

    // MARK: - BODY

    var body: some View {
        
        Image(post.image)
            .resizable()
            .aspectRatio(9/16, contentMode: .fit)
    }
}

// MARK: - PREVIEW

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(post: postData[5])
    }
}
