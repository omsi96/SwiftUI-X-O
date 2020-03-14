//
//  File.swift
//  SwiftUI-X-O
//
//  Created by Omar Alibrahim on 3/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import Foundation
import SwiftUI

class Env: ObservableObject{
    @Published var player: Player = .X
    @Published var fields: [[Field]] = Array<Array<Field>>(repeating: Array<Field>(repeating: Field(player: .none, enabled: true), count: 3), count: 3)
    
    func select(r: Int, c: Int)
    {
        guard  fields[r][c].enabled else {return}
        fields[r][c].player = player
        fields[r][c].enabled = false
        player.toggle()
    }
}
