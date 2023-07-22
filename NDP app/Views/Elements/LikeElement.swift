//
//  LikeElement.swift
//  NDP app
//heart
//  Created by klifton Cheng stu on 22/7/23.
//

import SwiftUI

struct LikeElement: View {
    
    @State var like : Bool?
    @State private var size : Double = Sizes.defaultSize.rawValue
    
    var body: some View {
        Image(systemName: like! ? "heart.fill" : "heart")
            .resizable()
            .foregroundColor(like! ? .red : .blue)
            .scaledToFit()
            .frame(width: size, height: size)
            .padding(2)
            .cornerRadius(5)
            .onTapGesture {
                withAnimation(.interpolatingSpring(stiffness: 50, damping: 2)) {
                    like!.toggle()
                    size = (size == Sizes.large.rawValue ? Sizes.defaultSize : Sizes.large).rawValue
                }
            }
    }
}

struct LikeElement_Previews: PreviewProvider {
    static var previews: some View {
        LikeElement(like: false)
    }
}
