import SwiftUI

struct ButtonComponent: View {
    var title: String = ""
    var onPress: () -> Void = {}
    var loading: Bool = false
    var hasShadow: Bool = true
    
    var body: some View {
        Button(action: {
            if !loading {
                onPress()
            }
        }) {
            ZStack {
                if loading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .black))
                } else {
                    Text(title)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                }
            }
            .frame(height: 55) // hp(6.6) approx
            .frame(maxWidth: .infinity)
            .background(Color.pixialGreen)
            .cornerRadius(20)       // theme.radius.xl
            .shadow(color: hasShadow ? Color.black.opacity(0.2) : .clear,
                    radius: hasShadow ? 8 : 0,
                    x: 0, y: hasShadow ? 10 : 0)
            .padding()
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        ButtonComponent(title: "Submit", onPress: {
            print("Button pressed")
        })
        
//        ButtonComponent(title: "Loading...", loading: true)
//        
//        ButtonComponent(title: "No Shadow", hasShadow: false)
    }
    .padding()
}
