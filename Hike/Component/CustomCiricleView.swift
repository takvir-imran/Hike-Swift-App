//
//  CustomCiricleView.swift
//  Hike
//
//  Created by Takvir Imran on 4/17/24.
//

import SwiftUI

struct CustomCiricleView: View {
    @State private var isAnimateGradient : Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [.customIndigoMedium, .customSalmonLight], startPoint: isAnimateGradient ? .topLeading : .bottomLeading, endPoint: isAnimateGradient ? .bottomLeading : .topTrailing )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                }
            MotionAnimationVIew()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCiricleView()
}
