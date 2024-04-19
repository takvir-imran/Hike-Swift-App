//
//  CustonLabelContent.swift
//  Hike
//
//  Created by Takvir Imran on 4/19/24.
//

import SwiftUI

struct CustonLabelContent: View {
    @State var titleText : String
    @State var labelText : String
    @State var image : String
    @State var iconColor : Color
    
    
    var body: some View {
        LabeledContent{
            Text(titleText)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
        }label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(iconColor)
                    Image(systemName: image)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(labelText)
            }
        }
    }
}

#Preview {
    List{
        CustonLabelContent(titleText: "Hike", labelText: "Application" , image: "apps.iphone", iconColor: .green)
    }
    
}
