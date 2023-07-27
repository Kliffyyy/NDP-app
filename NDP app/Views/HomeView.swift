//
//  HomeView.swift
//  NDP app
//
//  Created by klifton Cheng stu on 22/7/23.
//

import SwiftUI

enum FilterLike: CaseIterable {
    case all
    case liked
}

struct HomeView: View {
    
    @State private var videos = NationalDayVideos
    @State private var filter: FilterLike = .all
    
    @ObservedObject var videoManager: VideoManager = .shared
    
    var body: some View {
        NavigationView {
            List {
                ForEach($videos, id: \.id) { $video in
                    if filter == .all || video.like {
                        HStack {
                            MenuElement(data: $video)
                                .lineLimit(1)
                            Spacer()
                            LikeElement(like: $video.like)
                        }
                    }
                }
            }
            .navigationTitle("Home")
            .toolbar {
                Menu {
                    Button("Filter Likes") { filter = .liked }
                    Button("Filter All") { filter = .all }
                } label: {
                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                }
                NavigationLink(destination: SettingsView()) {
                    Image(systemName: "gearshape.fill")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
