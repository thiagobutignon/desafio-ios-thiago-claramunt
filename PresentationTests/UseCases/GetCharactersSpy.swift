//
//  GetCharactersSpy.swift
//  PresentationTests
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Domain

class GetCharactersSpy: GetCharacters {
    var completion: ((Result<CharactersDataWrapper, DomainError>)-> Void)?
    
    func get(completion: @escaping (Result<CharactersDataWrapper, DomainError>) -> Void) {
        self.completion = completion
    }
    
    func completeWithErro(_ error: DomainError) {
        completion?(.failure(error))
    }
    
    func completeWithCharacter(_ character: CharactersDataWrapper) {
        completion?(.success(character))
    }

}
