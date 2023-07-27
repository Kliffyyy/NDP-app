//
//  Filter.swift
//  NDP app
//
//  Created by klifton Cheng stu on 26/7/23.
//

import SwiftUI

struct MenuElement: View {
    
    @Binding var data: Video
    
    var body: some View {
        Menu(data.title) {
            Button("Watch Video") {
                if let url = data.link, UIApplication.shared.canOpenURL(url) {
                    UIApplication.shared.open(url)
                }
            }
        }
    }
}

struct MenuElement_Previews: PreviewProvider {
    static var previews: some View {
        MenuElement(data: .constant(NationalDayVideos.first!))
    }
}
