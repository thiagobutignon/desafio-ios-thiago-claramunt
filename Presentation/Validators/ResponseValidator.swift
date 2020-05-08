//
//  ResponseValidator.swift
//  Presentation
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public protocol ResponseValidator {
    func isValid(viewModel: CharactersViewModel) -> Bool
}
