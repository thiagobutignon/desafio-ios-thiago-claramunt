//
//  CharacterDataContainer.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct CharacterDataContainer: Model {
    let offset, limit, total, count: Int
    let results: [Character]
    
    public init(offset: Int, limit: Int, total: Int, count: Int, results: [Character]) {
        self.offset = offset
        self.limit = limit
        self.total = total
        self.count = count
        self.results = results
    }
}
