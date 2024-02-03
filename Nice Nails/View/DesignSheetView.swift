//
//  DesignSheetView.swift
//  Nice Nails
//
//  Created by mac on 30.01.24.
//

import SwiftUI

struct DesignSheetView: View {
    
    // MARK: - PROPERTIES
    let design: DesignModel
    @State private var isPressedHeart: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            ZStack(alignment: .topTrailing) {
                Image(design.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350)
                    .cornerRadius(12)
                
                Image(systemName: "heart.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32)
                    .padding(10)
                    .foregroundColor(isPressedHeart ? Color.accentColor : Color.white)
                    .onTapGesture(perform: {
                        if !isPressedHeart {
                            isPressedHeart = true
                        } else {
                            isPressedHeart = false
                        }
                    }
                )
            } //: ZSTACK
        } //: VSTACK
    }
}

#Preview {
    let designImage: [DesignModel] = Bundle.main.decode("designs_manicure.json")
    return DesignSheetView(design: designImage[0])
}
