//
//  RMButtons.swift
//  ReadMe
//
//  Created by Munirathinam, Anish | RIEPL on 08/06/23.
//

import SwiftUI

struct RMUpdateImageButton: View {
    @Binding var showImagePicker: Bool

    var body: some View {
        Button("Update Image…") {
            showImagePicker = true
        }
    }
}

struct RMDeleteImageButton: View {
    @Binding var showConfirmationDialog: Bool

    var body: some View {
        Button("Delete") {
            showConfirmationDialog = true
        }
    }
}

struct RMButtons_Previews: PreviewProvider {
    static var previews: some View {
        RMUpdateImageButton(showImagePicker: .constant(false))
        RMDeleteImageButton(showConfirmationDialog: .constant(false))
    }
}
