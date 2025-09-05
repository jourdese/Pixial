//
//  PostCard.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct PostCard: View {
    
    let profile_img: String
    let profile_name: String
    let profile_id: String
    let image: String
    let star_count: Int
    let description: String
    let comment_count: Int
    let react_count: Int
    let flag_green_count: Int
    let flag_red_count: Int
    
    var body: some View {
        VStack {
            PostCardHeader(profile_img: profile_img, profile_name: profile_name, profile_id: profile_id)
            PostCardBody(image: image, star_count: star_count, comment_count: comment_count, react_count: react_count, flag_green_count: flag_green_count, flag_red_count: flag_red_count, description: description)
        }
    }
}

//#Preview {
//    PostCard()
//}
