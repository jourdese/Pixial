//
//  PostCardBody.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct PostCardBody: View {
    
    let image: String
    let star_count: Int
    let comment_count: Int
    let react_count: Int
    let flag_green_count: Int
    let flag_red_count: Int
    let description: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Image("post1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .roundedCorner(_radius: 20, corners: [.bottomLeft, .topRight, .bottomRight])
            
        HStack {
                HStack {
                    Image(systemName: "star")
                    Text("\(star_count.formattedString())")
                }
                HStack {
                    Image(systemName: "flag")
                    HStack(spacing: 0) {
                        Text("\(flag_green_count.formattedString())")
                            .foregroundColor(.green)
                        Text("/")
                            .foregroundColor(.green) // or .primary
                        Text("\(flag_red_count.formattedString())")
                            .foregroundColor(.red)
                    }
                }
                HStack {
                    Image(systemName: "heart")
                    Text("245")
                }
                HStack {
                    Image(systemName: "bubble.left")
                    Text("\(comment_count.formattedString())")
                }
                HStack {
                    Image(systemName: "smiley")
                    Text("\(react_count.formattedString())")
                }
            }
        .font(.callout)
            Text(description)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .font(.callout)
                .foregroundColor(Color(.gray))
        }
        .padding(.leading, 55)
    }
}

//#Preview {
//    PostCardBody()
//}
