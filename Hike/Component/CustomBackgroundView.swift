//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Takvir Imran on 4/15/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
            LinearGradient(
                colors: [Color.customGreenLight, Color.customGreenMedium], startPoint: .top,
                    endPoint: .bottom)
                .cornerRadius(40)
        }
            
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
