//
//  StoryList.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

struct StoryList: Model {
    let available: Int
    let collectionURI: String
    let items: [StorySummary]
    let returned: Int
}
