//
//  ImageGridView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/30/21.
//

import SwiftUI

struct ImageGridView: View {
    
    @ObservedObject var posts: PostArrayObject
    private let formatter = DateFormatter()
    
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], alignment: .center, spacing: nil, pinnedViews: []) {
            ForEach(posts.dataArray, id: \.self) { post in
                NavigationLink(destination: FeedView(posts: PostArrayObject(post: post), title: post.username.uppercased())) {
                    PostView(post: post, showHeaderAndFooter: false)
                }
            }
        }
        .onAppear {
            formatter.dateStyle = .medium
            formatter.timeStyle = .none
        }
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(posts: PostArrayObject())
            .previewLayout(.sizeThatFits)
    }
}
