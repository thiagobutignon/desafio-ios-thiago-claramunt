//
//  UseCasesIntegrationTests.swift
//  UseCasesIntegrationTests
//
//  Created by Thiago B Claramunt on 06/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import XCTest
import Data
import Infra
import Domain
import DataTests

class GetCharactersIntegrationTests: XCTestCase {
    func test_get_character() {
        print("Inicio do teste de integração")
        let alamofireAdapter = AlamofireAdapter()
        let url: URL = URL(string: "https://gateway.marvel.com:443/v1/public/characters?ts=1588252114&apikey=e76cbab2212ff796ec498fef7eefe991&hash=0d6f127b3da6cbac0fdd727f3717f032")!
        let sut = RemoteGetCharacters(url: url, httpClient: alamofireAdapter)
        let exp = expectation(description: "waiting")
        sut.get { result in
            switch result {
            case .failure: XCTFail("Expected success got \(result) instead")
            case .success(let character):
                XCTAssertNotNil(character)
                XCTAssertEqual(200, character.code)
                XCTAssertEqual("Ok", character.status)
                print(character)
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }
    
    func test_get_failure() {
        let alamofireAdapter = AlamofireAdapter()
        let url: URL = URL(string: "https://gateway.marvel.com:443/v1/public/characters?ts=1588252114")!
        let sut = RemoteGetCharacters(url: url, httpClient: alamofireAdapter)
        let exp = expectation(description: "waiting")
        sut.get { (result) in
            switch result {
            case .failure(let error):
                XCTAssertEqual(error, .unexpected)
            case .success:
                XCTFail("Expected error got \(result) instead")
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }

}

