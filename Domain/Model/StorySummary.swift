//
//  StorySummary.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

struct StorySummary: Model {
    let resourceURI: String
    let name: String
    let type: ItemType
}
