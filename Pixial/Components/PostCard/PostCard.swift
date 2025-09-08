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

    init(
        profile_img: String = "avatar.png",
        profile_name: String = "Preview User",
        profile_id: String = "preview123",
        image: String = "sample.png",
        star_count: Int = 0,
        description: String = "Mock description for preview.",
        comment_count: Int = 0,
        react_count: Int = 0,
        flag_green_count: Int = 0,
        flag_red_count: Int = 0
    ) {
        self.profile_img = profile_img
        self.profile_name = profile_name
        self.profile_id = profile_id
        self.image = image
        self.star_count = star_count
        self.description = description
        self.comment_count = comment_count
        self.react_count = react_count
        self.flag_green_count = flag_green_count
        self.flag_red_count = flag_red_count
    }

    var body: some View {
        VStack {
            PostCardHeader(profile_img: profile_img, profile_name: profile_name, profile_id: profile_id)
            PostCardBody(
                image: image,
                star_count: star_count,
                comment_count: comment_count,
                react_count: react_count,
                flag_green_count: flag_green_count,
                flag_red_count: flag_red_count,
                description: description
            )
        }
    }
}
