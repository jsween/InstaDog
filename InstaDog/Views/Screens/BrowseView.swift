//
//  BrowseView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/30/21.
//

import SwiftUI

struct BrowseView: View {
    
    var posts = PostArrayObject()
    
    var body: some View {
        ScrollView {
            CarouselView()
            ImageGridView(posts: posts)
        }
        .navigationBarTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BrowseView()
        }
    }
}
