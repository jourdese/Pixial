//
//  PostListView.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/3/25.
//

import SwiftUI

struct PostListView: View {
    @StateObject private var postData = ReadJsonData()
    
    var body: some View {
        NavigationStack {
            List(postData.posts) { post in
                Text(post.description) // make sure your Post model has this property
            }
        }
    }
}

#Preview {
    let mock = ReadJsonData()
    mock.posts = [
        Post(
            image: "test.png",
            like_count: 12,
            comment_count: 3,
            view_count: 100,
            description: "Hello Pixial!",
            profile_img: "avatar.png",
            profile_name: "Jourdese",
            profile_id: "user1"
        )
    ]
    return PostListView()
        .environmentObject(mock) // inject mock
}

