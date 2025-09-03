//
//  RootView.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/3/25.
//

import SwiftUI

struct RootView: View {
    @State private var isLoading = true
    
    var body: some View {
        if isLoading {
            LaunchView {
                // when finished, update state
                isLoading = false
            }
        } else {
            WelcomeView() // 👈 your destination screen
        }
    }
}

#Preview {
    RootView()
}
