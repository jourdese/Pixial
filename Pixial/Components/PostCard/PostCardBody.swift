//
//  PostCardBody.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct PostCardBody: View {
    var body: some View {
        VStack {
            Image("post1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
        }
    }
}

#Preview {
    PostCardBody()
}
