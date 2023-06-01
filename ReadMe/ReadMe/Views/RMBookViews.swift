//
//  RMBookViews.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import SwiftUI

extension RMBook {
    struct Image: View {
        let title: String

        var body: some View {
            let symbol = SwiftUI.Image(title: title) ?? .init(systemName: "book")
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
        }
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first,
              case let sfSymbolName = "\(character.lowercased()).square",
              UIImage(systemName: sfSymbolName) != nil else {
                return nil
        }
        self.init(systemName: sfSymbolName)
    }
}

struct RMBookInfoStack: View {
    let title: String
    let author: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            Text(author)
                .foregroundColor(.secondary)
        }
    }
}

struct RMBookViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            RMBookInfoStack(title: "Title", author: "Author")
            RMBook.Image(title: RMBook().title)
            RMBook.Image(title: "")
            RMBook.Image(title: "📖")
        }
    }
}
