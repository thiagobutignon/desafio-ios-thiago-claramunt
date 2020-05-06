//
//  GetCharacters.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public protocol GetCharacters {
    func get(completion: @escaping (Result<CharactersDataWrapper, DomainError>) -> Void)
}

public struct GetCharactersModel: Model {
    public let code: Int
    public let status, copyright, attributionText, attributionHTML: String
    public let etag: String
    public let data: CharacterDataContainer
    
    public init(code: Int, status: String, copyright: String, attributionText: String, attributionHTML: String, etag: String, data: CharacterDataContainer) {
        self.code = code
        self.status = status
        self.copyright = copyright
        self.attributionText = attributionText
        self.attributionHTML = attributionHTML
        self.etag = etag
        self.data = data
    }
}
