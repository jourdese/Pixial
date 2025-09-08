//
//  HomeView.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/3/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    StoryListView()
                    PostListView() // now scrolls together
                }
                .padding(.vertical)
            }
            .navigationTitle("Home")
        }
    }
}


#Preview {
    HomeView()
}
