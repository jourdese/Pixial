//
//  PostListView.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/3/25.
//

import SwiftUI

struct PostListView: View {
    @ObservedObject private var postData: ReadJsonData = ReadJsonData()


    init(postData: ReadJsonData = ReadJsonData()) {
        self.postData = postData
    }
    
    var body: some View {
        VStack {
            List(postData.posts) { post in
                PostCard(
                    profile_img: post.profile_img,
                    profile_name: post.profile_name,
                    profile_id: post.profile_id,
                    image: post.image,
                    star_count: post.star_count,
                    description: post.description,
                    comment_count: post.comment_count,
                    react_count: post.react_count,
                    flag_green_count: post.flag_green_count,
                    flag_red_count: post.flag_red_count
                )
            }
        }
    }
}

#Preview {
    let mock = ReadJsonData()
    mock.posts = [
        Post(
            image: "sample.png",
            star_count: 42,
            comment_count: 12,
            react_count: 30,
            flag_green_count: 2,
            flag_red_count: 1,
            description: "This is a mock post for preview",
            profile_img: "cat2",
            profile_name: "Jourdese",
            profile_id: "user1"
        )
    ]
    return PostListView(postData: mock)
}

#Preview("PostListPosts") {
    let mock = ReadJsonData()
    mock.posts = [
        Post(
            image: "sample.png",
            star_count: 42,
            comment_count: 12,
            react_count: 30,
            flag_green_count: 2,
            flag_red_count: 1,
            description: "This is a mock post for preview",
            profile_img: "avatar.png",
            profile_name: "Jourdese",
            profile_id: "user1"
        )
    ]
    return PostListView(postData: mock)
}
