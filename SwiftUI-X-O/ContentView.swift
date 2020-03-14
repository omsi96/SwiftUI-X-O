//
//  ContentView.swift
//  SwiftUI-X-O
//
//  Created by Omar Alibrahim on 3/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var env: Env
    
    var body: some View
    {
        VStack(spacing: 50) {
            Text("\(env.player.title) Turn")
                .font(.largeTitle)
                .bold()
            XOGrid()
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Env())
    }
}
