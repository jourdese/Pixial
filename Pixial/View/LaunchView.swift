import SwiftUI

struct LaunchView: View {
    var onFinished: () -> Void = {}
    @State private var progress: Double
    
    init(initialProgress: Double = 0.0, onFinished: @escaping () -> Void = {}) {
        _progress = State(initialValue: initialProgress)
        self.onFinished = onFinished
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo-pixial-text-below-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130)
                
                Spacer()
                
                ProgressView(value: progress)
                    .progressViewStyle(.linear)
                    .tint(.blue)
                    .frame(width: 150)
                    .padding(.bottom, 50)
            }
        }
        .onAppear {
            // Run only if we start at 0
            if progress == 0.0 {
                Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { timer in
                    if progress < 1.0 {
                        progress += 0.01
                    } else {
                        timer.invalidate()
                        onFinished()
                    }
                }
            }
        }
    }
}

#Preview {
    LaunchView(initialProgress: 0.7) // 👈 starts at 70%
}
