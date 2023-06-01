//
//  RMBookDetails.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import SwiftUI

struct RMBookDetails: View {
    let book: RMBook

    var body: some View {
        VStack(alignment: .leading) {
            RMBookInfoStack(title: book.title,
                            author: book.author,
                            titleFont: .title,
                            authorFont: .title2)
            RMBook.Image(title: book.title, size: nil)
        }
        .padding()
    }
}

struct RMBookDetails_Previews: PreviewProvider {
    static var previews: some View {
        RMBookDetails(book: RMBook())
    }
}
