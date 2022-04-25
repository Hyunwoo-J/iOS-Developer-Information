//
//  ViewModelBindableType.swift
//  iOS-Developer-Information
//
//  Created by Hyunwoo Jang on 2022/04/25.
//

import UIKit


/// ViewModelBindableType
protocol ViewModelBindableType {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    
    func bindViewModel()
}



extension ViewModelBindableType where Self: UIViewController {
    mutating func bind(viewModel: Self.ViewModelType) {
        self.viewModel = viewModel
        loadViewIfNeeded()
        
        bindViewModel()
    }
}
