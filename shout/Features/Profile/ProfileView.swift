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
        ScrollView {
            VStack{
                AsyncImage(url: pictureUrl){ image in
                    image
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                } placeholder: {
                    ProgressView().progressViewStyle(.circular)
                }
                
                
                Spacer(minLength: 20)
                
                VStack (spacing: 4){
                    Text(username)
                    Text("@\(slug)")
                        .foregroundStyle(Color.secondary)
                }
            }
            
            Spacer(minLength: 24)
        }
        .padding()
    }
}
