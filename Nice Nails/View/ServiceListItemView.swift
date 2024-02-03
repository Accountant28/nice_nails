//
//  ServiceListItemView.swift
//  Nice Nails
//
//  Created by mac on 2.02.24.
//

import SwiftUI

struct ServiceListItemView: View {
    
    // MARK: - PROPERTIES
    let service: DescriptionModel
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            Image(service.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(service.name)
                    .font(.title3)
                    .fontWeight(.thin)
                    .foregroundColor(.primary)
                
                Text(service.price)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            
            Image(systemName: "square")
        }
    }
}

#Preview {
    let services: [DescriptionModel] = Bundle.main.decode("description_manicure.json")
    return ServiceListItemView(service: services[0])
}
