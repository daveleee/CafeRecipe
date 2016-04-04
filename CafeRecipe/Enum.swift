//
//  Enum.swift
//  CafeRecipe
//
//  Created by 박태현 on 2016. 4. 4..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import Foundation

enum Color {
    case Red
    case Orange
    case Yellow
    case Green
    case Blue
    case Purple
    
    var colorName: String {
        switch self {
        case .Red:
            return "빨간색"
        case .Orange:
            return "귤색"
        case .Yellow:
            return "노란색"
        case .Green:
            return "초록색"
        case .Blue:
            return "파란색"
        case .Purple:
            return "보라색"
        }
    }
}