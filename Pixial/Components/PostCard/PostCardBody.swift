//
//  PostCardBody.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct PostCardBody: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Image("post1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .roundedCorner(_radius: 20, corners: [.bottomLeft, .topRight, .bottomRight])
            
        HStack {
                HStack {
                    Image(systemName: "star")
                    Text("245")
                }
                HStack {
                    Image(systemName: "flag")
                    HStack(spacing: 0) {
                        Text("200")
                            .foregroundColor(.green)
                        Text("/")
                            .foregroundColor(.green) // or .primary
                        Text("245")
                            .foregroundColor(.red)
                    }
                }
                HStack {
                    Image(systemName: "heart")
                    Text("245")
                }
                HStack {
                    Image(systemName: "bubble.left")
                    Text("12")
                }
                HStack {
                    Image(systemName: "smiley")
                    Text("245")
                }
            }
        .font(.callout)
            Text("Explore machine learning algorithms in R!")
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .font(.callout)
                .foregroundColor(Color(.gray))
        }
        .padding(.leading, 55)
    }
}

#Preview {
    PostCardBody()
}
