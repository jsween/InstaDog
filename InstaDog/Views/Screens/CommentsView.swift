//
//  CommentsView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/24/21.
//

import SwiftUI

struct CommentsView: View {
    
    @State private var submissionText: String = ""
    @State var commentArray: [CommentModel] = [CommentModel]()
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    // Foreach
                    ForEach(commentArray, id: \.self) { comment in
                        MessageView(comment: comment)
                    }
                }
            }
            HStack {
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here....", text: $submissionText)
                
                Button {
                    // Do something here....
                } label: {
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                }
                .accentColor(Color.MyTheme.purpleColor)
            }
            .padding(6)
        }
        .navigationBarTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            getComments()
        }
    }//: Body
    
    // MARK: - FUNCTIONS
    
    func getComments() {
        // fetch from DB
        print("GET COMMENTS FROM DB")
        let comment1 = CommentModel(commentId: "", userId: "", username: "user 1", content: "comment 1 goes here", dateCreated: Date())
        let comment2 = CommentModel(commentId: "", userId: "", username: "user 1", content: "comment 2 goes here", dateCreated: Date())
        let comment3 = CommentModel(commentId: "", userId: "", username: "user 1", content: "comment 3 goes here", dateCreated: Date())
        let comment4 = CommentModel(commentId: "", userId: "", username: "user 1", content: "comment 4 goes here", dateCreated: Date())
        let comment5 = CommentModel(commentId: "", userId: "", username: "user 1", content: "comment 5 goes here", dateCreated: Date())
        
        self.commentArray.append(comment1)
        self.commentArray.append(comment2)
        self.commentArray.append(comment3)
        self.commentArray.append(comment4)
        self.commentArray.append(comment5)
    }

}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        CommentsView()
        }
    }
}
