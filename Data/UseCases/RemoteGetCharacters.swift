//
//  RemoteGetCharacters.swift
//  Data
//
//  Created by Thiago B Claramunt on 05/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Domain

public final class RemoteGetCharacters: GetCharacters {
    private let url: URL
    private let httpClient: HttpGetClient
    
    public init(url: URL, httpClient: HttpGetClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    public func get(completion: @escaping (Result<CharactersDataWrapper, DomainError>) -> Void) {
        httpClient.get(to: url) { [weak self] result in
            guard self != nil else { return }
            
            switch result {
            case .success(let data):
                if let model: CharactersDataWrapper = data?.toModel() {
                    completion(.success(model))
                } else {
                    completion(.failure(.unexpected))
                }
            case .failure:
                completion(.failure(.unexpected))
            }
        }
    }
    
    
}
