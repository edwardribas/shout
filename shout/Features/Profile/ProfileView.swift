//
//  ProfileView.swift
//  shout
//
//  Created by Eduardo Ribas on 14/12/25.
//

import SwiftUI

struct ProfileView: View {
    var pictureUrl = URL(string: "https://avatars.githubusercontent.com/u/94547625?v=4")
    var username = "Eduardo Ribas"
    var slug = "eribas"
    var description = "🇧🇷 | @Deepintoidkwhat @EduardoWes @lollymeirelles"
    var numberOfFollowing = String(74)
    var numberOfFollowers = String(149)
    var numberOfRecordings = String(2083)
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 20) {
                    HStack(alignment: .center, spacing: 20){
                        AsyncImage(url: pictureUrl){ image in
                            image
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                        } placeholder: {
                            ProgressView().progressViewStyle(.circular)
                        }
                        
                        VStack (alignment: .leading, spacing: 4){
                            Text(username)
                            Text("@\(slug)")
                                .foregroundStyle(Color.secondary)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack{
                        Text(description)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(.ultraThinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        HStack() {
                            ProfileInformation(label: "Followers", value: numberOfFollowers)
                            ProfileInformation(label: "Following", value: numberOfFollowing)
                            ProfileInformation(label: "Recordings", value: numberOfRecordings)
                        }                        
                    }
                }
                .padding()
                .toolbar{
                    ToolbarItemGroup{
                        Button("Options", systemImage: "ellipsis"){
                            print("options")
                        }
                        .labelStyle(.iconOnly)
                        
                        Button("Share", systemImage: "square.and.arrow.up"){
                            print("share")
                        }
                        .labelStyle(.iconOnly)
                    }
                }
            }
        }
    }
}

struct ProfileInformation: View {
    var label: String
    var value: String
    
    var body: some View {
        VStack(spacing: 6){
            Text(value)
                .font(.headline)
            
            Text(label)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
