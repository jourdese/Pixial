//
//  PostCardHeader.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct PostCardHeader: View {
    
    let profile_img: String
    let profile_name: String
    let profile_id: String
    
    var body: some View {
        HStack {
            Image(profile_img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .leading){
                Text(profile_name).bold()
                Text(profile_id)
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
    }
}

//#Preview {
//    PostCardHeader()
//}
