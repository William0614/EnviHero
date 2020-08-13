//
//  ViewRouter.swift
//  EnviHero
//
//  Created by 김보윤 on 2020/08/11.
//  Copyright © 2020 김보윤. All rights reserved.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
    
    @Published var currentPage: String
    
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "onboardingView"
        } else {
            currentPage = "contentView"
        }
    }
    
}
