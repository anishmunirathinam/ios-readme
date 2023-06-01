//
//  RMLibrary.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import Foundation

struct RMLibrary {
    var sortedBooks: [RMBook] = { booksCache }()

    static let booksCache: [RMBook] = [RMBook(title: "A TIME TO KILL", author: "JOHN GRISHAM"),
                                       RMBook(title: "THE HOUSE OF MIRTH", author: "EDITH WHARTON"),
                                       RMBook(title: "EAST OF EDEN", author: "JOHN STEINBECK"),
                                       RMBook(title: "THE SUN ALSO RISES", author: "ERNEST HEMINGWAY"),
                                       RMBook(title: "A SCANNER DARKLY", author: "PHILIP K. DICK"),
                                       RMBook(title: "MOAB IS MY WASHPOT", author: "STEPHEN FRY"),
                                       RMBook(title: "NOLI ME TANGERE", author: "JOSÉ RIZAL"),
                                       RMBook(title: "BRAVE NEW WORLD", author: "ALDOUS HUXLEY"),
                                       RMBook(title: "ROSEMARY AND RUE (OCTOBER DAYE #1)", author: "SEANAN MCGUIRE"),
                                       RMBook(title: "REMEMBRANCE OF THINGS PAST", author: "MARCEL PROUST"),
                                       RMBook(title: "BEHOLD, HERE’S POISON", author: "GEORGETTE HEYER")]
}
