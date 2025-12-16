//
//  FeedView.swift
//  shout
//
//  Created by Eduardo Ribas on 14/12/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Text("Not implemented")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
            }
            .navigationTitle("Feed")
            .navigationSubtitle("See your friend's activity")
        }
    }
}
