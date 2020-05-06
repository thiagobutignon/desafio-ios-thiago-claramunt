//
//  ComicList.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct ComicsList: Model {
    let available: Int
    let collectionURI: String
    let items: [ComicSummary]
    let returned: Int
    
    public init(available: Int, collectionURI: String, items: [ComicSummary], returned: Int) {
        self.available = available
        self.collectionURI = collectionURI
        self.items = items
        self.returned = returned
    }
}
