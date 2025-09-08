//
//  StoryListView.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct StoryListView: View {
    @ObservedObject var postData = ReadJsonData()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              AddStoryCard()
                ForEach(postData.posts) { post in
                    StoryCard(image: post.profile_img)
                }

            }
        }
        .offset(x: 15)
    }
}

#Preview {
    StoryListView()
}
