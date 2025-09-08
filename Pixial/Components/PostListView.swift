//
//  PostListView.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/3/25.
//

import SwiftUI

//struct PostListView: View {
//    @ObservedObject private var postData: ReadJsonData = ReadJsonData()
//
//
//    init(postData: ReadJsonData = ReadJsonData()) {
//        self.postData = postData
//    }
//    
//    var body: some View {
//        VStack {
//            List(postData.posts) { post in
//                PostCard(
//                    profile_img: post.profile_img,
//                    profile_name: post.profile_name,
//                    profile_id: post.profile_id,
//                    image: post.image,
//                    star_count: post.star_count,
//                    description: post.description,
//                    comment_count: post.comment_count,
//                    react_count: post.react_count,
//                    flag_green_count: post.flag_green_count,
//                    flag_red_count: post.flag_red_count
//                )
//            }
//        }
//    }
//}

struct PostListView: View {
    @ObservedObject private var postData = ReadJsonData()
    
    var body: some View {
        LazyVStack(spacing: 16) {
            ForEach(postData.posts) { post in
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
        .padding(.horizontal)
    }
}

#Preview {
    PostListView()
}
