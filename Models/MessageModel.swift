//
//  MessageModel.swift
//  TinderClone
//
//  Created by Shivam Nanda on 11/12/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
