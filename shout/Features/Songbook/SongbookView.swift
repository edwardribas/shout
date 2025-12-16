//
//  SongbookView.swift
//  shout
//
//  Created by Eduardo Ribas on 14/12/25.
//

import SwiftUI

struct SongbookView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Text("Not implemented")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
            }
            .navigationTitle("Songbook")
            .navigationSubtitle("Discover new songs to sing")
        }
    }
}
