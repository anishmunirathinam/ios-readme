//
//  RMLibrary.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import Foundation
import SwiftUI

struct RMLibrary {
    var sortedBooks: [RMBook] { booksCache }

    /// An in-memory cache of the manually-sorted books.
    private var booksCache: [RMBook] = [
        .init(title: "Ein Neues Land", author: "Shaun Tan"),
        .init(title: "Bosch", author: "Laurinda Dixon"),
        .init(title: "Dare to Lead", author: "Brené Brown"),
        .init(title: "Blasting for Optimum Health Recipe Book", author: "NutriBullet"),
        .init(title: "Drinking with the Saints", author: "Michael P. Foley"),
        .init(title: "A Guide to Tea", author: "Adagio Teas"),
        .init(title: "The Life and Complete Work of Francisco Goya", author: "P. Gassier & J Wilson"),
        .init(title: "Lady Cottington's Pressed Fairy Book", author: "Lady Cottington"),
        .init(title: "How to Draw Cats", author: "Janet Rancan"),
        .init(title: "Drawing People", author: "Barbara Bradley"),
        .init(title: "What to Say When You Talk to Yourself", author: "Shad Helmstetter"),
        .init(title: "A Time to Kill", author: "John Grisham"),
        .init(title: "The House of Mirth", author: "Edith Wharton"),
        .init(title: "East of Eden", author: "John Strinbeck"),
        .init(title: "The Sun Also Rises", author: "Ernest Hemingway"),
        .init(title: "A Scanner Darkly", author: "Philip K. Dick"),
        .init(title: "Moab is my washpot", author: "Stephen Fry"),
        .init(title: "Noli My Tangere", author: "Jose Rizal"),
        .init(title: "Brave new world", author: "Aldous Huxley"),
        .init(title: "Rosemay and Rue (OCTOBER DAYE #1)", author: "Senan McGuire"),
        .init(title: "Rememberence of things past!", author: "Marcel Proust"),
        .init(title: "Behold, Here's Poison", author: "Georgette Heyer")
    ]

    var images: [RMBook: Image] = [:]
}
