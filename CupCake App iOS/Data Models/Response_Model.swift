//
//  Response_Model.swift
//  CupCake App iOS
//
//  Created by Shubham on 10/18/23.
//

import Foundation


struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}
