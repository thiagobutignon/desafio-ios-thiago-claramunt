//
//  ListCharactersModel.swift
//  Presentation
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Domain

public struct CharactersViewModel: Model {
    public var character: CharactersDataWrapper?
    
    public init(character: CharactersDataWrapper?) {
        self.character = character
    }
}
