//
//  XOGrid.swift
//  SwiftUI-X-O
//
//  Created by Omar Alibrahim on 3/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import Foundation
import SwiftUI

struct XOGrid: View{
    
    var body: some View{
        VStack(spacing: 10) {
            ForEach(0...2, id: \.self) { i in
                HStack{
                    ForEach(0...2, id: \.self) { j in
                        XOButton(row: i, column: j)
                    }
                }
            }
        }
    }
}


