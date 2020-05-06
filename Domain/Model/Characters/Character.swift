//
//  Character.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct Character: Model {
    public let id: Int
    public let name, resultDescription: String
    public let modified: String
    public let thumbnail: Image
    public let resourceURI: String
    public let comics, series: ComicsList
    public let stories: StoryList
    public let events: ComicsList
    public let urls: [Url]

    enum CodingKeys: String, CodingKey {
        case id, name
        case resultDescription = "description"
        case modified, thumbnail, resourceURI, comics, series, stories, events, urls
    }
    public init(id: Int, name: String, resultDescription: String, modified: String, thumbnail: Image, resourceURI: String, comics: ComicsList, series: ComicsList, stories: StoryList, events: ComicsList, urls: [Url]){
        self.id = id
        self.name = name
        self.resultDescription = resultDescription
        self.modified = modified
        self.thumbnail = thumbnail
        self.resourceURI = resourceURI
        self.comics = comics
        self.series = series
        self.stories = stories
        self.events = events
        self.urls = urls
    }
}
