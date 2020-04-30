//
//  ComicList.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

struct ComicsList: Model {
    let available: Int
    let collectionURI: String
    let items: [ComicSummary]
    let returned: Int
}
