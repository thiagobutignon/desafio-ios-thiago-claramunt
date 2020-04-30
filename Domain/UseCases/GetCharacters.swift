//
//  GetCharacters.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public protocol GetCharacters {
    func get(getCharactersModel: GetCharactersModel, completion: @escaping (Result<CharactersDataWrapper, DomainError>) -> Void)
}

public struct GetCharactersModel: Model {
    let code: Int
    let status, copyright, attributionText, attributionHTML: String
    let etag: String
    let data: CharacterDataContainer
}
