//
//  LogoView.swift
//  Nice Nails
//
//  Created by mac on 27.01.24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Nice".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
            
//            Image("logo-image")
//                .resizable()
//                .scaledToFit()
//                .background(Color.black)
//                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Nails".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.accentColor)
        } //: HSTACK
    }
}

#Preview {
    LogoView()
        .previewLayout(.sizeThatFits)
        .padding()
}
