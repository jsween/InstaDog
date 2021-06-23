//
//  FeedView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/23/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            PostView()
            PostView()
            PostView()
            PostView()
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
