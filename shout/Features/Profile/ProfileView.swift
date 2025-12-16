//
//  ProfileView.swift
//  shout
//
//  Created by Eduardo Ribas on 14/12/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ProfileSection()
                    ProfileRecords()
                }
                .padding()
            }
            .toolbar{
                Button("Share", systemImage: "square.and.arrow.up"){
                    print("share")
                }
                .labelStyle(.iconOnly)
            }
        }
    }
}

// MARK: Records

struct RecordDetail: Identifiable {
    var musicName: String
    var participantsCount: Int
    var likesCount: Int
    var viewsCount: Int
    var submittedAt: Date
    var bannerUrl: String
    var id: Int
}

let records: Array<RecordDetail> = [
    RecordDetail(musicName: "teste", participantsCount: 12, likesCount: 124, viewsCount: 30, submittedAt: Date.now, bannerUrl: "https://avatars.githubusercontent.com/u/94547625?v=4", id: 1),
    RecordDetail(musicName: "teste", participantsCount: 12, likesCount: 124, viewsCount: 30, submittedAt: Date.now, bannerUrl: "https://avatars.githubusercontent.com/u/94547625?v=4", id: 2),
    RecordDetail(musicName: "teste", participantsCount: 12, likesCount: 124, viewsCount: 30, submittedAt: Date.now, bannerUrl: "https://avatars.githubusercontent.com/u/94547625?v=4", id: 3),
    RecordDetail(musicName: "teste", participantsCount: 12, likesCount: 124, viewsCount: 30, submittedAt: Date.now, bannerUrl: "https://avatars.githubusercontent.com/u/94547625?v=4", id: 4),
]

struct ProfileRecords: View {
    var body: some View {
        VStack {
            ForEach(records){ record in
                Record(record: record)
            }
        }
    }
}

struct Record: View {
    var record: RecordDetail
    
    var body: some View {
        HStack {
            Image(systemName: "play.fill")
            
            VStack{
                Text("opa")
            }
            
            Image(systemName: "ellipsis")
        }
        .frame(maxWidth: .infinity)
        .padding()
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

// MARK: Profile

struct ProfileSection: View {
    var pictureUrl = URL(
        string: "https://avatars.githubusercontent.com/u/94547625?v=4"
    )
    
    var username = "Eduardo Ribas"
    var slug = "eribas"
    var description = "🇧🇷 | @Deepintoidkwhat @EduardoWes @lollymeirelles"
    
    var numberOfFollowing = String(74)
    var numberOfFollowers = String(149)
    var numberOfRecordings = String(2083)
    
    var body: some View {
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
    }
}
    
struct ProfileInformation: View {
    var label: String
    var value: String
    
    var body: some View {
        VStack(spacing: 6){
            Text(value).font(.headline)
            Text(label).font(.subheadline)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
