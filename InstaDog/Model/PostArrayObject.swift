//
//  PostArrayObject.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/23/21.
//

import Foundation

class PostArrayObject: ObservableObject {
    @Published var dataArray = [PostModel]()
    
    init() {
        print("FETCHING FROM DB HERE...")
        let post1 = PostModel(postId: "", userId: "", username: "Daniel Tosh", caption: "Caption1 goes here", dateCreated: Date(), likeCount: 300, likedByUser: true)
        let post2 = PostModel(postId: "", userId: "", username: "Joshy", caption: "Caption2 goes here", dateCreated: Date(), likeCount: 100, likedByUser: true)
        let post3 = PostModel(postId: "", userId: "", username: "Kelo", caption: nil, dateCreated: Date(), likeCount: 300, likedByUser: true)
        let post4 = PostModel(postId: "", userId: "", username: "Daniel Tosh", caption: "Caption4 goes here and this one is super long, I can't believe Tosh wouldn't shut up on this one.", dateCreated: Date(), likeCount: 33, likedByUser: false)
        let post5 = PostModel(postId: "", userId: "", username: "Abandoned Places", caption: "Caption5 goes here", dateCreated: Date(), likeCount: 6765, likedByUser: true)
        let post6 = PostModel(postId: "", userId: "", username: "JoeMontana", caption: nil, dateCreated: Date(), likeCount: 900, likedByUser: true)
        let post7 = PostModel(postId: "", userId: "", username: "Steve Martin", caption: "Caption7 goes here", dateCreated: Date(), likeCount: 6543, likedByUser: true)
        let post8 = PostModel(postId: "", userId: "", username: "Daniel Tosh", caption: nil, dateCreated: Date(), likeCount: 33235, likedByUser: true)
    
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
        self.dataArray.append(post5)
        self.dataArray.append(post6)
        self.dataArray.append(post7)
        self.dataArray.append(post8)
    }
    
    /// Init for single element
    init(post: PostModel) {
        self.dataArray.append(post)
    }
}
