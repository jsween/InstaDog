//
//  PostModel.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/23/21.
//

import SwiftUI

struct PostModel: Identifiable, Hashable {
    let id = UUID()
    var postId: String // Post ID in DB
    var userId: String // User's ID in DB
    var username: String
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
