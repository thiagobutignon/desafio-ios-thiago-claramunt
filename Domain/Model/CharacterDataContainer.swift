//
//  CharacterDataContainer.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

struct CharacterDataContainer: Model {
    let offset, limit, total, count: Int
    let results: [Character]
}
