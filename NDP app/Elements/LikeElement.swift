//
//  LikeElement.swift
//  NDP app
//heart
//  Created by klifton Cheng stu on 22/7/23.
//

import SwiftUI

struct LikeElement: View {
    
    @Binding var like : Bool
    @State private var size : Double = Sizes.defaultSize.rawValue
    
    var body: some View {
        Image(systemName: like ? "heart.fill" : "heart")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .foregroundColor(.red)
            .onTapGesture {
                like.toggle()
            }
            .padding(2)
            .cornerRadius(5)
    }
}

struct LikeElement_Previews: PreviewProvider {
    static var previews: some View {
        LikeElement(like: .constant(false))
    }
}
