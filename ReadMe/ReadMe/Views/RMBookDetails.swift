//
//  RMBookDetails.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 01/06/23.
//

import SwiftUI
import class PhotosUI.PHPickerViewController

struct RMBookDetails: View {
    let book: RMBook
    @State private var showImagePicker: Bool = false
    @Binding var image: Image?

    var body: some View {
        VStack(alignment: .leading) {
            RMBookInfoStack(title: book.title,
                            author: book.author,
                            titleFont: .title,
                            authorFont: .title2)
            VStack {
                RMBook.Image(image: image, title: book.title, size: nil, cornerRadius: 16.0)
                    .scaledToFit()
                RMUpdateImageButton(showImagePicker: $showImagePicker)
                    .padding()
            }
            Spacer()
        }
        .padding()
        .sheet(isPresented: $showImagePicker) {
            PHPickerViewController.View(image: $image)
        }
    }
}

struct RMBookDetails_Previews: PreviewProvider {
    static var previews: some View {
        RMBookDetails(book: RMBook(), image: .constant(nil))
    }
}
