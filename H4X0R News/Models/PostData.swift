//
//  PostData.swift
//  H4X0R News
//
//  Created by Gaurav Patil on 1/27/24.
//

import Foundation

struct PostData: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
