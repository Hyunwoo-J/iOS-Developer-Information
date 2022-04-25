//
//  TransitionStyle.swift
//  iOS-Developer-Information
//
//  Created by Hyunwoo Jang on 2022/04/25.
//

import Foundation


/// 트랜지션 스타일
enum TransitionStyle {
    case root
    case push
}



/// 트랜지션 스타일 에러 케이스
enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unKnown
}
