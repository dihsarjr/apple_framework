//
//  FrameworkDetailedView.swift
//  AppleFramework
//
//  Created by Mohammed Rashid on 24/09/23.
//

import SwiftUI

struct FrameworkDetailedView: View {
    @Binding var isShowingDetaildView: Bool
    var framework: Framework
    var body: some View {
        VStack{
            HStack{Spacer()
                Button{
                    isShowingDetaildView = false
                }label: {
                    Image(systemName: "xmark").foregroundColor(.white )
                }.padding()
            }
         
            Spacer()
            FrameworkTitleView(frameworks: framework)
            Text(framework.description)
                .font(.footnote).padding()
            Spacer()
            Button{}label: {
                Text("Learn More").padding()
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .frame(width: 280, height:40).background(.black)
                                     .clipShape(.buttonBorder)
                
            }
        }
    }
}

#Preview {
    FrameworkDetailedView(isShowingDetaildView: .constant(false), framework: MockData.frameworks.first!)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
