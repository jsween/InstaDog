//
//  PostView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/23/21.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    @State var showHeaderAndFooter: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            // MARK: - HEADER
            if showHeaderAndFooter {
                HStack {
                    NavigationLink(destination: ProfileView(profileDisplayName: post.username, profileUserId: post.userId, isMyProfile: false)) {
                        Image("dog1")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30, alignment: .center)
                            .cornerRadius(15)
                        Text(post.username)
                            .font(.callout)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all, 6)
                
            }
            
            // MARK: - IMAGE
            
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            // MARK: - FOOTER
            
            if showHeaderAndFooter {
                HStack(alignment: .center, spacing: 20) {
                    Image(systemName: "heart")
                        .font(.title3)
                    
                    // MARK: - COMMENT ICON
                    
                    NavigationLink(destination: CommentsView()) {
                        Image(systemName: "bubble.right")
                            .font(.title3)
                            .foregroundColor(.primary)
                    }
                    Image(systemName: "paperplane")
                        .font(.title3)
                    Spacer()
                }
                .padding(.all, 6)
                
                if let caption = post.caption {
                    HStack {
                        Text(caption)
                        Spacer(minLength: 0)
                    }
                    .padding(.all, 6)
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post = PostModel(postId: "", userId: "", username: "JSween", caption: "This is my test caption", dateCreated: Date(), likeCount: 12, likedByUser: true)
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}
