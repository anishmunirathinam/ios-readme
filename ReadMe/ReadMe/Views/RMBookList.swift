//
//  RMBookList.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import SwiftUI

struct RMBookList: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            RMBookRow(book: RMBook())
        }
    }
}

struct RMBookRow: View {
    let book: RMBook

    var body: some View {
        HStack {
            RMBook.Image(title: book.title)
            RMBookInfoStack(title: book.title, author: book.author)
        }
    }
}

struct RMBookList_Previews: PreviewProvider {
    static var previews: some View {
        RMBookList()
    }
}
