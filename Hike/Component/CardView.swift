//
//  CardView.swift
//  Hike
//
//  Created by Takvir Imran on 4/15/24.
//

import SwiftUI

struct CardView: View {
    @State private var imgNo: Int = 1
    @State private var randNo : Int = 1
    @State private var isShowingSheet : Bool = false
    
    func randomNumber (){
        repeat{
            randNo = Int.random(in: 1...5)
        }while imgNo == randNo
        imgNo = randNo
    }
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Hiking")
                                .fontWeight(.black)
                                .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(colors: [Color.customGrayLight, Color.customGrayMedium], startPoint: .top, endPoint: .bottom)
                            )
                            Spacer()
                            Button{
                                print("Setting")
                                isShowingSheet.toggle()
                            }label: {
                                CustomButtonView()
                            }
                            .sheet(isPresented: $isShowingSheet){
                                SettingsView()
                                    .presentationDragIndicator(.visible)
                                    .presentationDetents([.medium, .large])
                            }
                        }
                        Text("Fun and enjoyable outdoor activity for friends and families.")
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .italic()
                            .foregroundColor(Color.customGrayMedium)
                    }
                    .padding(.horizontal, 30)
                
                ZStack {
                    CustomCiricleView()
                    Image("image-\(imgNo)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imgNo)
                }
                Button{
                    print("ASD\(imgNo)")
                    randomNumber()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                    }
                    .buttonStyle(GraidentButton())
                }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
