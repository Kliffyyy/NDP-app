//
//  Persistence.swift
//  NDP app
//
//  Created by klifton Cheng stu on 22/7/23.
//

import Foundation
import SwiftUI

class <#Type#>Manager: ObservableObject {
    static let shared: <#Type#>Manager = .init()
    
    @Published var <#item#>s: [<#Type#>] = [] {
        didSet {
            save()
        }
    }
        
    private init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "<#Type#>s.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encoded<#Type#>s = try? propertyListEncoder.encode(<#item#>s)
        try? encoded<#Type#>s?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrieved<#Type#>Data = try? Data(contentsOf: archiveURL),
            let <#item#>sDecoded = try? propertyListDecoder.decode([<#Type#>].self, from: retrieved<#Type#>Data) {
            <#item#>s = <#item#>sDecoded
        }
    }
}

