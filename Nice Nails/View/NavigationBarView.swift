//
//  NavigationBarView.swift
//  Nice Nails
//
//  Created by mac on 27.01.24.
//

import SwiftUI

struct NavigationBarView: View {
    
    // MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack {
            
            Image(systemName: "magnifyingglass")
                .font(.title3)
                .foregroundColor(.accentColor)
            
            Spacer()
            
            LogoView()
//                .opacity(isAnimating ? 1 : 0)
//                .offset(x: 0, y: isAnimating ? 0 : -25)
//                .onAppear(perform: {
//                    withAnimation(.easeOut(duration: 0.5)) {
//                        isAnimating = true
//                    }
//                })
            
            Spacer()
            
            Image(systemName: "bell.fill")
                .font(.title3)
                .foregroundColor(.accentColor)
            
        } //: HSTACK
    }
}

#Preview {
    NavigationBarView()
        .previewLayout(.sizeThatFits)
        .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
}
