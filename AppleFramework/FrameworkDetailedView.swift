//
//  FrameworkDetailedView.swift
//  AppleFramework
//
//  Created by Mohammed Rashid on 24/09/23.
//

import SwiftUI

struct FrameworkDetailedView: View {
    var framework: Framework
    var body: some View {
        VStack{
            FrameworkTitleView(frameworks: framework)
            Text(framework.description)
                .font(.footnote).padding()
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
    FrameworkDetailedView(framework: MockData.frameworks.first!)
}
