//
//  AddStoryCard.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import SwiftUI

struct AddStoryCard: View {
    var body: some View {
        VStack {
            Image(systemName: "plus.circle")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(Color.pixialGreen)
                .clipShape(Circle())
        }
    }
}

#Preview {
    AddStoryCard()
}
