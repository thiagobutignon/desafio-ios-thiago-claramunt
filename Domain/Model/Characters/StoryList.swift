//
//  StoryList.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct StoryList: Model {
    public let available: Int
    public let collectionURI: String
    public let items: [StorySummary]
    public let returned: Int
    
    public init(available: Int, collectionURI: String, items: [StorySummary], returned: Int) {
        self.available = available
        self.collectionURI = collectionURI
        self.items = items
        self.returned = returned
    }
}
