//
//  MotionAnimationVIew.swift
//  Hike
//
//  Created by Takvir Imran on 4/17/24.
//

import SwiftUI

struct MotionAnimationVIew: View {
    @State private var randCircle : Int = Int.random(in: 10...12)
    @State private var isAnimated : Bool = false
    //Random Coordinate
    func randomCoordinate() -> CGFloat{
        return CGFloat.random(in: 1...256)
    }
    //Random Size
    func randomSize() -> CGFloat{
        return CGFloat.random(in: 4...80)
    }
    //Random Scale
    func randomScale() -> CGFloat{
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //Random Speed
    func randomSpeed() -> Double{
        return Double.random(in: 0.05...1)
    }
    //Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    var body: some View {
        ZStack {
            ForEach(0...randCircle, id: \.self) { item in
                Circle()
                    .fill(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )
                    .onAppear(perform: {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimated = true
                        }
                    }
                    )
                    .scaleEffect(isAnimated ? randomScale() :1)
                    
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    ZStack{
        Color.teal.ignoresSafeArea()
        MotionAnimationVIew()
    }
}
