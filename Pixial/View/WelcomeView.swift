//
//  WelcomeView.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/3/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            VStack {
                // Top image
                Image("photo-welcome")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .foregroundStyle(Color(UIColor.secondarySystemBackground))
                    .padding(.top, 200)

                Spacer() // pushes text + button down
                
                // Welcome text
                Text("Welcome to Pixial")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.pixialGray)
                    .padding(.bottom, 20)
                HStack {
                    Spacer()
                    Text("Completely free to use for everyone, available always and without any restrictions")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .foregroundColor(.pixialGray)
                        .padding(.bottom, 50)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding()
                
                ButtonComponent(title: "Getting Started", onPress: {
                    print("Button pressed")
                })
                
                HStack(spacing: 4) {
                    Text("Already have an account?")
                        .font(.subheadline)
                        .fontWeight(.heavy)
                        .foregroundColor(.pixialGray)
                    
                    Button(action: {
                        print("Login tapped")
                        // Navigate to login screen here
                    }) {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.heavy)
                            .foregroundColor(.pixialLogin) // make it look like a link
                    }
                }
                .padding(.bottom, 20)
                
            }
        }
    }
}

#Preview {
    WelcomeView()
}
