//
//  CommicSummary.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct ComicSummary: Model {
    let resourceURI: String
    let name: String
    
    public init(resourceURI: String, name: String) {
        self.resourceURI = resourceURI
        self.name = name
    }
}
