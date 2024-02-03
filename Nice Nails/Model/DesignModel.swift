//
//  DescriptionManicureModel.swift
//  Nice Nails
//
//  Created by mac on 26.01.24.
//

import Foundation

struct DesignModel: Codable, Identifiable {
    let id: Int
    let name: String
    let price: String
    let image: String
}
