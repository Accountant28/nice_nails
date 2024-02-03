//
//  MaintPhotoView.swift
//  Nice Nails
//
//  Created by mac on 27.01.24.
//

import SwiftUI

struct MaintPhotoView: View {
    
    // MARK: - PROPERTIES
    let mainPhoto: MainPhotoModel
    
    var body: some View {
        Image(mainPhoto.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    let photo: [MainPhotoModel] = Bundle.main.decode("main_photo.json")
    return MaintPhotoView(mainPhoto: photo[0])
}
