//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol Story {
    var title: String { get set }
    var choice1: String { get set }
    var choice1Destination: Int { get set }
    var choice2: String { get set }
    var choice2Destination: Int { get set }

}

struct GameStory: Story {
    var title: String
    var choice1: String
    var choice1Destination: Int
    var choice2: String
    var choice2Destination: Int
}
