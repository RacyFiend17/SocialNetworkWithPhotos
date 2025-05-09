//
//  CustomTabBarController.swift
//  SocialNetworkWithPhotos
//
//  Created by Дмитрий Перчемиди on 06.05.2025.
//

import Foundation
import SwiftUI

final class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "YP Black")
        
        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        }
    }
}


