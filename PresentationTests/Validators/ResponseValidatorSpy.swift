//
//  ResponseValidatorSpy.swift
//  PresentationTests
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Presentation

class ResponseValidatorSpy: ResponseValidator {
    var isValid = true
    var data: CharactersViewModel?
    
    func isValid(viewModel: CharactersViewModel) -> Bool {
        self.data = viewModel
        return isValid
    }
    
    func simulateInvalidData() {
        isValid = false
    }
}
