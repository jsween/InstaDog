//
//  MessageView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/24/21.
//

import SwiftUI

struct MessageView: View {
    
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            // MARK: - AVATAR

            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            VStack(alignment: .leading, spacing: 4) {
                
                // MARK: - USERNAME

                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                // MARK: - COMMENT

                Text(comment.content)
                    .padding(10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
            }
            Spacer(minLength: 0)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var comment: CommentModel = CommentModel(commentId: "", userId: "", username: "author1", content: "content 1 whatever else is supposed to be in a freaking comment", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
