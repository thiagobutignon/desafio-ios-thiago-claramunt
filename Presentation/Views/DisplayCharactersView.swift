//
//  LoadCharacters.swift
//  Presentation
//
//  Created by Thiago B Claramunt on 08/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Domain

public protocol DisplayCharactersView {
    func showCharacters(viewModel: DisplayCharactersViewModel)
}

public struct DisplayCharactersViewModel: Equatable {
    public var data: CharactersDataWrapper
    
    public init(data: CharactersDataWrapper) {
        self.data = data
    }
}
