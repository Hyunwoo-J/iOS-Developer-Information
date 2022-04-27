//
//  Scene.swift
//  iOS-Developer-Information
//
//  Created by Hyunwoo Jang on 2022/04/27.
//

import UIKit


/// 구현할 씬
enum Scene {
    case list(MainListViewModel)
    case referenceList(ReferenceListViewModel)
    case web(WebViewModel)
}



extension Scene {
    func instantiate(from storyboard: String = "Main") -> UIViewController {
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        switch self {
        case .list(let mainListViewModel):
            guard let mainNav = storyboard.instantiateViewController(withIdentifier: "MainListNav") as? UINavigationController else {
                fatalError()
            }
            
            guard var mainListVC = mainNav.viewControllers.first as? MainListViewController else {
                fatalError()
            }
            
            mainListVC.bind(viewModel: mainListViewModel)
            
            return mainNav
        
        case .referenceList(let referenceListViewModel):
            guard var referenceListVC = storyboard.instantiateViewController(withIdentifier: "ReferenceListVC") as? ReferenceListViewController else {
                fatalError()
            }
            
            referenceListVC.bind(viewModel: referenceListViewModel)
            
            return referenceListVC
        
        case .web(let webViewModel):
            guard var webVC = storyboard.instantiateViewController(withIdentifier: "WebVC") as? WebViewController else {
                fatalError()
            }
            
            webVC.bind(viewModel: webViewModel)
            
            return webVC
        }
    }
}
