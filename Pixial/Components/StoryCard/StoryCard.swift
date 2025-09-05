//
//  StoryCard.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct StoryCard: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing), lineWidth: 2.5)
            )
    }
}


