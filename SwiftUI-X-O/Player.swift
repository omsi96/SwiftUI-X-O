//
//  File.swift
//  SwiftUI-X-O
//
//  Created by Omar Alibrahim on 3/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import Foundation
import SwiftUI

enum Player{
    case X, O, none
    
    mutating func toggle()
    {
        switch self{
        case .X: self = .O
        case .O: self = .X
        case .none: self = .none
        }
    }
    var title: String {
        switch self{
        case .X: return "X"
        case .O: return "O"
        case .none: return ""
        }
    }
    var color: Color{
        switch self{
        case .X: return .green
        case .O: return .red
        case .none: return .black
        }
    }
    
    var value: Int{
        switch self {
        case .X:    return 1
        case .O:    return -2
        case .none: return 0
        }
    }
}



