//
//  CommentModel.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/24/21.
//

import SwiftUI

struct CommentModel: Identifiable, Hashable {
    var id = UUID()
    var commentId: String // from DB
    var userId: String // from DB
    var username: String // from DB
    var content: String // from DB
    var dateCreated: Date // from DB
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
