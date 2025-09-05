//
//  Extensions.swift
//  Pixial
//
//  Created by Jourdese Palacio on 9/5/25.
//

import Foundation
import SwiftUI

extension View {
    func roundedCorner(_radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: _radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
