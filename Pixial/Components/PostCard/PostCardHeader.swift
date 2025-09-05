//
//  PostCardHeader.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct PostCardHeader: View {
    var body: some View {
        HStack {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .leading){
                Text("Garlic Palacio").bold()
                Text("garlic_palacio@")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
    }
}

#Preview {
    PostCardHeader()
}
