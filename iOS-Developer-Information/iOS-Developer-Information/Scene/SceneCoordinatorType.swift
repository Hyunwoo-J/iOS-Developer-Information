//
//  SceneCoordinatorType.swift
//  iOS-Developer-Information
//
//  Created by Hyunwoo Jang on 2022/04/27.
//

import Foundation
import RxSwift


/// Scene Coordinator가 공통으로 구현해야 하는 기능
protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    
    @discardableResult
    func close(animated: Bool) -> Completable
}
