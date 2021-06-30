//
//  ContentView.swift
//  InstaDog
//
//  Created by Jonathan Sweeney on 6/23/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView(posts: PostArrayObject())
            }
            .tabItem {
                Image(systemName: "house.fill")
            }
            NavigationView {
                BrowseView()
            }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Screen3")
                .tabItem {
                    Image(systemName: "square.and.arrow.up.fill")
                }
            Text("Screen4")
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }//: TabView
        .accentColor(Color.MyTheme.purpleColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
