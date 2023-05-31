//
//  ContentView.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 31/05/23.
//

import SwiftUI

struct RMBookListView: View {
    var body: some View {
        VStack {
            Image(systemName: "book")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Read Me!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RMBookListView()
    }
}
