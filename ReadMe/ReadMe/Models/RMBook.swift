//
//  RMBook.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import Foundation

struct RMBook: Hashable {
    let title: String
    let author: String

    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}
