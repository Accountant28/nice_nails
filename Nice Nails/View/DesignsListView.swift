//
//  DesignsListView.swift
//  Nice Nails
//
//  Created by mac on 27.01.24.
//

import SwiftUI

struct DesignsListView: View {
    
    // MARK: - PROPERTIES
    let designs: DesignModel
    @State private var isPressedHeart: Bool = false
    @State private var isPressedBag: Bool = false
    @State private var bagColor: String = "bag"
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            ZStack(alignment: .topTrailing) {
                Image(designs.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .cornerRadius(12)
                
                Button {
                    print("Heart button was pressed")
                } label: {
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
                } //: BUTTON
            } //: ZSTACK
        
            Text(designs.name)
            .frame(width: 150, height: 32)
            .font(.system(size: 11))
            .padding(.bottom, 5)
            .padding(.top, 5)
            
            HStack(alignment: .center) {
                Text(designs.price)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .padding(.leading, 5)
                    .padding(.bottom, 5)
                
                Spacer()
                
                Button {
                    print("Bag button was pressed")
                } label: {
                    Image(systemName: bagColor)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15)
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                        .foregroundColor(Color.accentColor)
                        .onTapGesture(perform: {
                            if !isPressedBag {
                                bagColor = "bag.fill"
                                isPressedBag = true
                            } else {
                                bagColor = "bag"
                                isPressedBag = false
                            }
                        }
                    )
                } //: BUTTON
            } //: HSTACK
        } //: VSTACK
        .overlay(RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray.opacity(0.2), lineWidth: 0.8))
        .padding(.horizontal, 2)
    }
}

#Preview {
    let designes: [DesignModel] = Bundle.main.decode("designs_manicure.json")
    return DesignsListView(designs: designes[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
