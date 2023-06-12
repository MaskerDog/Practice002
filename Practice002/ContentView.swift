//
//  ContentView.swift
//  Practice002
//
//  Created by npc on 2023/06/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Good Morning!")
                .font(.system(size: 50, weight: .thin, design: .rounded))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
