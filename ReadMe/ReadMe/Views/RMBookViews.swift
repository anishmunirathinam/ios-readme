//
//  RMBookViews.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import SwiftUI

extension RMBook {
    struct Image: View {
        let image: SwiftUI.Image?
        let title: String
        let size: CGFloat?
        let cornerRadius: CGFloat

        var body: some View {
            if let image = image {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
                    .cornerRadius(cornerRadius)
            } else {
                let symbol = SwiftUI.Image(title: title) ?? .init(systemName: "book")
                symbol
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: size)
                    .font(Font.title.weight(.light))
                    .foregroundColor(.secondary.opacity(0.5))
            }
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
    let titleFont: Font
    let authorFont: Font

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(titleFont)
            Text(author)
                .font(authorFont)
                .foregroundColor(.secondary)
        }
    }
}

private extension RMBook.Image {
    init(title: String) {
        self.init(image: nil, title: title, size: 80, cornerRadius: 12.0)
    }
}

struct RMBookViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            RMBookInfoStack(title: "Title", author: "Author", titleFont: .title2, authorFont: .title3)
            RMBook.Image(title: RMBook().title)
            RMBook.Image(title: "")
            RMBook.Image(title: "📖")
        }
    }
}
