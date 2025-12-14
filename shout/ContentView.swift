//
//  ContentView.swift
//  shout
//
//  Created by Eduardo Ribas on 14/12/25.
//

import SwiftUI

struct ContentView: View {
    func something() {
        print("teste")
    }
    
    var body: some View {
        NavigationStack {
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
            .toolbar{
                ToolbarItemGroup{
                    Button("Options", systemImage: "ellipsis", action: { print("options")})
                        .labelStyle(.iconOnly)
                    
                    Button("Share", systemImage: "square.and.arrow.up", action: { print("share")})
                        .labelStyle(.iconOnly)
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
