//
//  ContentView.swift
//  shout
//
//  Created by Eduardo Ribas on 14/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(){
            Tab("Profile", systemImage: "person") {
                ProfileView()
            }
            
            Tab("Feed", systemImage: "house.fill") {
                FeedView()
            }
            
            Tab("Songbook", systemImage: "music.note") {
                SongbookView()
            }
        }
    }
}

#Preview {
    ContentView()
}
