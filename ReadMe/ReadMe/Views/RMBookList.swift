//
//  RMBookList.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import SwiftUI

struct RMBookList: View {
    var body: some View {
        RMBook.Image(title: RMBook().title)
    }
}

struct RMBookList_Previews: PreviewProvider {
    static var previews: some View {
        RMBookList()
    }
}
