//
//  XOButton.swift
//  SwiftUI-X-O
//
//  Created by Omar Alibrahim on 3/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI


struct XOButton: View {
    @EnvironmentObject var env: Env
    @State var row: Int
    @State var column: Int
    
    //    @State var field: Field
    var body: some View {
        Text(self.env.fields[self.row][self.column].player.title)
            .font(.largeTitle)
            .foregroundColor(self.env.fields[self.row][self.column].player.color)
            .bold()
            .frame(width: 90, height: 90)
            .background(Color(#colorLiteral(red: 0.935937345, green: 0.935937345, blue: 0.935937345, alpha: 1)))
            .onTapGesture {
                self.env.select(r: self.row, c: self.column)
        }

    }
}


struct XOButton_Previews: PreviewProvider {
    static var previews: some View {
        
        XOButton(row: 0, column: 0)
            .environmentObject(Env())
            .previewLayout(.sizeThatFits)
    }
}
