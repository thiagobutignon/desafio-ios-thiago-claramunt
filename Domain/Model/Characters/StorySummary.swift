//
//  StorySummary.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct StorySummary: Model {
    public let resourceURI: String
    public let name: String
    public let type: ItemType
    
    public init(resourceURI: String, name: String, type: ItemType) {
        self.resourceURI = resourceURI
        self.name = name
        self.type = type
    }
}
