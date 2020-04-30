//
//  Character.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

struct Character: Model {
    let id: Int
    let name, resultDescription: String
    let modified: Date
    let thumbnail: Image
    let resourceURI: String
    let comics, series: ComicsList
    let stories: StoryList
    let events: ComicsList
    let urls: [Url]

    enum CodingKeys: String, CodingKey {
        case id, name
        case resultDescription = "description"
        case modified, thumbnail, resourceURI, comics, series, stories, events, urls
    }
}
