//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by Mohammed Rashid on 24/09/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns:columns,content: {
                    ForEach(MockData.frameworks, id: \.id){item in
                        FrameworkTitleView(frameworks: item)
                            .onTapGesture {
                                viewModel.selectedFramework = item
                                
                            }
                    }
                })
            }.navigationTitle("Apple Framework")
                .sheet(isPresented: $viewModel.isShowingDetailedView, content: {
                    FrameworkDetailedView(isShowingDetaildView: $viewModel.isShowingDetailedView, framework: viewModel.selectedFramework!)
                })
            
           
        }
        
    }
}

#Preview {
    FrameworkGridView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


struct FrameworkTitleView: View{
    var frameworks: Framework
   
    var body: some View {
        VStack{
            Image(frameworks.imageName)
                .resizable()
                .frame(width:80,height: 80)
            Text(frameworks.name)
                .font(.subheadline)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.5)
            
        }.padding()
    }
}
