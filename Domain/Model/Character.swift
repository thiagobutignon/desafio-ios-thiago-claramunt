//
//  Characters.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

// MARK: - Characters
struct CharactersDataWrapper: Model {
    let code: Int
    let status, copyright, attributionText, attributionHTML: String
    let etag: String
    let data: CharacterDataContainer
}

// MARK: - DataClass
struct CharacterDataContainer: Model {
    let offset, limit, total, count: Int
    let results: [Character]
}

// MARK: - Result
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

// MARK: - URLElement
struct Url: Model {
    let type: String
    let url: String
}

// MARK: - Thumbnail
struct Image: Model {
    let path: String
    let thumbnailExtension: ImageExtension

    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
}

// MARK: - Comics
struct ComicsList: Model {
    let available: Int
    let collectionURI: String
    let items: [ComicSummary]
    let returned: Int
}

// MARK: - ComicsItem
struct ComicSummary: Model {
    let resourceURI: String
    let name: String
}

// MARK: - Stories
struct StoryList: Model {
    let available: Int
    let collectionURI: String
    let items: [StorySummary]
    let returned: Int
}

// MARK: - StoriesItem
struct StorySummary: Model {
    let resourceURI: String
    let name: String
    let type: ItemType
}

enum ItemType: String, Model {
    case cover = "cover"
    case empty = ""
    case interiorStory = "interiorStory"
}

enum ImageExtension: String, Model {
    case gif = "gif"
    case jpg = "jpg"
}

enum URLType: String, Model {
    case comiclink = "comiclink"
    case detail = "detail"
    case wiki = "wiki"
}
