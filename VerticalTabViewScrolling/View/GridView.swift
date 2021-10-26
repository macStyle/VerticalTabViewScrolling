//
//  GridView.swift
//  VerticalTabiViewScrolling
//
//  Created by Adam Jemni on 10/26/21.
//

import SwiftUI

struct GridView: View {
    
    // MARK: - PROPERTIES

    let post : [Post] = postData

    let columns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    // MARK: - BODY

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(post) { item in
                    GridItemView(post: item)
                }
            }
            .padding(.horizontal)
        }
    }

}

// MARK: - PREVIEW

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
