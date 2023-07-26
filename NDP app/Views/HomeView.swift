//
//  HomeView.swift
//  NDP app
//
//  Created by klifton Cheng stu on 22/7/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var videoManager: VideoManager = .shared
    
    var body: some View {
        NavigationView {
            List {
                ForEach(NationalDayVideos) { video in
                    HStack {
                        MenuElement(data: video)
                            .lineLimit(1)
                        Spacer()
                        LikeElement(like: video.like)
                    }
                }
            }
            .navigationTitle("Home")
            .toolbar {
                
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
