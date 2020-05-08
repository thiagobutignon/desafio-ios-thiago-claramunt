//
//  TestFactories.swift
//  PresentationTests
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Presentation
import Domain

func makeCharacterViewModel() -> CharactersViewModel {
    return CharactersViewModel(character: makeCharacterDataWrapper())
}

func makeCharacterDataWrapper() -> CharactersDataWrapper {
    return CharactersDataWrapper(code: 200, status: "Ok", copyright: "© 2020 MARVEL", attributionText: "Data provided by Marvel. © 2020 MARVEL", attributionHTML: "<a href=\"http://marvel.com\">Data provided by Marvel. © 2020 MARVEL</a>", etag: "fc98c5cab2bf2ab1eca34d69ba46bf335bd79754", data: makeCharacterDataContainer())
}

func makeGetCharactersModel() -> GetCharactersModel {
    return GetCharactersModel(code: 200, status: "Ok", copyright: "© 2020 MARVEL", attributionText: "Data provided by Marvel. © 2020 MARVEL", attributionHTML: "<a href=\"http://marvel.com\">Data provided by Marvel. © 2020 MARVEL</a>", etag: "fc98c5cab2bf2ab1eca34d69ba46bf335bd79754", data: makeCharacterDataContainer())
}

func makeCharacterDataContainer() -> CharacterDataContainer {
    return CharacterDataContainer(offset: 0, limit: 20, total: 1493, count: 20, results: makeCharacter())
}

func makeCharacter() -> [Character] {
    return [Character(id: 1011334, name: "3-D Man", resultDescription: "", modified: "2014-04-29T14:18:17-0400", thumbnail: makeThumbnail(), resourceURI: "http://gateway.marvel.com/v1/public/characters/1011334", comics: makeComicList(), series: makeSeries(), stories: makeStoryList(), events: makeEvents(), urls: makeUrls())]
}

func makeThumbnail() -> Image {
    return Image(path: "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784", thumbnailExtension: .jpg)
}

func makeComicList() -> ComicsList {
    return ComicsList(available: 12, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/comics", items: makeComicSummary(), returned: 12)
}

func makeComicSummary() -> [ComicSummary] {
    return [ComicSummary(resourceURI: "http://gateway.marvel.com/v1/public/comics/21366", name: "Avengers: The Initiative (2007) #14")]
}

func makeSeries() -> ComicsList {
    return ComicsList(available: 3, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/series", items: makeSeriesSummary(), returned: 3)
}

func makeSeriesSummary() -> [ComicSummary] {
    return [ComicSummary(resourceURI: "http://gateway.marvel.com/v1/public/series/1945", name: "Avengers: The Initiative (2007 - 2010)")]
}

func makeStoryList() -> StoryList {
    return StoryList(available: 21, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/stories", items: makeStorySummary(), returned: 20)
}

func makeStorySummary() -> [StorySummary] {
    return [StorySummary(resourceURI: "http://gateway.marvel.com/v1/public/stories/19947", name: "Cover #19947", type: .cover)]
}

func makeEvents() -> ComicsList {
    return ComicsList(available: 1, collectionURI: "http://gateway.marvel.com/v1/public/characters/1011334/events", items: makeEventsList(), returned: 1)
}

func makeEventsList() -> [ComicSummary] {
    return [ComicSummary(resourceURI: "http://gateway.marvel.com/v1/public/events/269", name: "Secret Invasion")]
}

func makeUrls() -> [Url] {
    return [Url(type: "detail", url: "http://marvel.com/comics/characters/1011334/3-d_man?utm_campaign=apiRef&utm_source=e76cbab2212ff796ec498fef7eefe991")]
}




func makeSuccessAlertViewModel(message: String) -> AlertViewModel {
    return AlertViewModel(title: "Sucesso", message: message)
}

func makeErrorAlertViewModel(message: String) -> AlertViewModel {
    return AlertViewModel(title: "Erro", message: message)
}
