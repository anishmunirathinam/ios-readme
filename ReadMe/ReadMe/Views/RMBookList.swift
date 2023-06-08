//
//  RMBookList.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import SwiftUI

struct RMBookList: View {
    @State private var library: RMLibrary = RMLibrary()

    var body: some View {
        NavigationView {
            List(library.sortedBooks, id: \.self) { book in
                RMBookRow(book: book, image: $library.images[book])
            }
            .navigationTitle("My Library")
        }
    }
}

struct RMBookRow: View {
    let book: RMBook
    @Binding var image: Image?

    var body: some View {
        NavigationLink(destination: RMBookDetails(book: book, image: $image)) {
            HStack {
                RMBook.Image(image: image, title: book.title, size: 80, cornerRadius: 12.0)
                RMBookInfoStack(title: book.title,
                                author: book.author,
                                titleFont: .title2,
                                authorFont: .title3)
                .lineLimit(1)
            }
        }
    }
}

struct RMBookList_Previews: PreviewProvider {
    static var previews: some View {
        RMBookList()
    }
}
