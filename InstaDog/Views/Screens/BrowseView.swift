//
//  BrowseView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/30/21.
//

import SwiftUI

struct BrowseView: View {
    var body: some View {
        ScrollView {
            CarouselView()
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
