//
//  TransitionStyle.swift
//  iOS-Developer-Information
//
//  Created by Hyunwoo Jang on 2022/04/25.
//

import Foundation


/// 트랜지션 스타일
enum TransitionStyle {
    case root // 첫 번째 화면
    case push // 새로운 화면을 네비게이션 스택에 추가
}



/// 트랜지션 스타일 에러 케이스
enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unKnown
}
