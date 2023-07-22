//
//  Persistence.swift
//  NDP app
//
//  Created by klifton Cheng stu on 22/7/23.
//

import Foundation
import SwiftUI

class VideoManager: ObservableObject {
    static let shared: VideoManager = .init()
    
    @Published var videos: [Video] = [] {
        didSet {
            save()
        }
    }
        
    private init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "Videos.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedVideos = try? propertyListEncoder.encode(videos)
        try? encodedVideos?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrievedVideoData = try? Data(contentsOf: archiveURL),
            let videosDecoded = try? propertyListDecoder.decode([Video].self, from: retrievedVideoData) {
            videos = videosDecoded
        }
    }
}

