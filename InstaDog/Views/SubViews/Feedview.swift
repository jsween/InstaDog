//
//  FeedView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/23/21.
//

import SwiftUI

struct FeedView: View {
    let post = PostModel(postId: "", userId: "", username: "Johnny", caption: "Test caption goes here", dateCreated: Date(), likeCount: 44, likedByUser: true)
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            PostView(post: post)
            PostView(post: post)
            PostView(post: post)
            PostView(post: post)
        }
        .navigationBarTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Feedview_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FeedView()
        }
    }
}
