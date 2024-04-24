//
//  SettingsView.swift
//  Hike
//
//  Created by Takvir Imran on 4/17/24.
//

import SwiftUI

struct SettingsView: View {
    private let alternateAppIcons: [String] = [
    "AppIcon-MagnifyingGlass",
    "AppIcon-Map",
    "AppIcon-Mushroom",
    "AppIcon-Camera",
    "AppIcon-Backpack",
    "AppIcon-Campfire"
    ]
    var body: some View {
        List{
            Section {
                HStack(alignment: .center){
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(
                            .system(size: 80, weight: .black)
                        )
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .padding(.top, 8)
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGreenLight, .customGreenMedium,.customGreenDark], 
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                VStack(spacing: 10){
                    Text("Where can you find perfect tracks?")
                        .font(.title2)
                    .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
            }
            .listRowSeparator(.hidden)
            
            Section(
                header: Text("Alternate Icons")
            ){
                VStack {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 12) {
                            ForEach(alternateAppIcons.indices, id: \.self) { item in
                                Button{
                                   print("pressed")
                                    UIApplication.shared.setAlternateIconName(alternateAppIcons[item])
                                }label: {
                                    Image(alternateAppIcons[item] + "-Preview")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                        .cornerRadius(16)
                                }
                            .buttonStyle(.borderless)
                            }
                        }.padding(.bottom, 12)
                    }.padding(.top, 12)
                    Text("Choose your favorite App Icons from the collection above.")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
                }
            }
            .listRowSeparator(.hidden)
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("All Rights Reserved")
                    Spacer()
                }
                .padding(.vertical, 8)
            ){
                CustonLabelContent(
                    titleText: "Hike",
                    labelText: "Application" ,
                    image: "apps.iphone",
                    iconColor: .blue)
                CustonLabelContent(titleText: "iOS, iPadOS", labelText: "Compatibility", image: "exclamationmark.circle", iconColor: .red)
                CustonLabelContent(titleText: "Swift", labelText: "Technology", image: "swift", iconColor: .orange)
                CustonLabelContent(titleText: "1.0", labelText: "Version", image: "gear", iconColor: .purple)
                CustonLabelContent(titleText: "Takvir Imran", labelText: "Developer", image: "ellipsis.curlybraces", iconColor: .mint)
                CustonLabelContent(titleText: "Takvir Imran", labelText: "Designer", image: "paintpalette", iconColor: .pink)
                CustonLabelContent(titleText: "N/A", labelText: "Website", image: "globe", iconColor: .indigo)
                
            }
        }
    }
}

#Preview {
    SettingsView()
}
