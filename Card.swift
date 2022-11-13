//
//  Person.swift
//  TinderClone
//
//  Created by Franck-Stephane Ndame Mpouli on 06/08/2020.
//

import UIKit
import AVKit

//MARK: - DATA
struct Card: Identifiable {

    let id = UUID()
    let name: String
    let imageName: String
    let age: Int
    let bio: String
    let index : Int
    let boolean: Bool
    /// Card x position
    var x: CGFloat = 0.0
    /// Card y position
    var y: CGFloat = 0.0
    /// Card rotation angle
    var degree: Double = 0.0
    
    static var data: [Card] {
        [
            Card(name: "", imageName: "image3", age: 21, bio: "Caption: Sunday, it’s sooo close!",index:0, boolean: false),
            Card(name: "", imageName:"image4", age: 23, bio: "Celtics with the best offensive Rating in the NBA at 119.4 The gap between them and number 2 is way too much", index:1, boolean: false),
            Card(name: "", imageName: "image5", age: 26, bio: "Argentina squad Depth fifa world cup 2022 qatar", index: 2, boolean: false),
            Card(name: "", imageName:"image6", age: 20, bio: "Curry & Wiggins > NBA", index: 3, boolean: false),


        ]
    }
    
}
