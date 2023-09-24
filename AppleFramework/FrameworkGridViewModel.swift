//
//  FrameworkGridViewModel.swift
//  AppleFramework
//
//  Created by Mohammed Rashid on 24/09/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailedView = true
        }
    }
   @Published var isShowingDetailedView: Bool = false
}

