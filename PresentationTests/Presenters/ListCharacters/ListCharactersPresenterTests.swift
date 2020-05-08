//
//  PresentationTests.swift
//  PresentationTests
//
//  Created by Thiago B Claramunt on 06/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import XCTest
import Presentation
import Domain


class ListCharactersPresenterTests: XCTestCase {
    
    func test_get_characters_should_show_error_message_if_getCharacter_fails() {
          let alertViewSpy = AlertViewSpy()
          let getCharacterSpy = GetCharactersSpy()
          let sut = makeSut(alertView: alertViewSpy, getCharacters: getCharacterSpy)
          let exp = expectation(description: "waiting")
          alertViewSpy.observe { viewModel in
              XCTAssertEqual(viewModel, makeErrorAlertViewModel(message: "Algo inesperado aconteceu"))
              exp.fulfill()
          }
        sut.getCharacter(viewModel: makeCharacterViewModel())
        getCharacterSpy.completeWithErro(.unexpected)
          wait(for: [exp], timeout: 1)
      }

    func test_get_characters_should_show_success_message_if_getCharacter_succeds() {
        let alertViewSpy = AlertViewSpy()
        let getCharacterSpy = GetCharactersSpy()
        let sut = makeSut(alertView: alertViewSpy, getCharacters: getCharacterSpy)
        let exp = expectation(description: "waiting")
        alertViewSpy.observe { viewModel in
            XCTAssertEqual(viewModel, makeSuccessAlertViewModel(message: "Lista de Personagens carregadas com sucesso"))
            exp.fulfill()
        }
        sut.getCharacter(viewModel: makeCharacterViewModel())
        getCharacterSpy.completeWithCharacter(makeCharacterDataWrapper())
        wait(for: [exp], timeout: 1)
    }

    func test_get_characters_should_show_loading_before_and_after_getAccount() {
        let loadingViewSpy = LoadingViewSpy()
        let getCharacterSpy = GetCharactersSpy()
        let sut = makeSut(getCharacters: getCharacterSpy,loadingView: loadingViewSpy)
        let exp = expectation(description: "waiting")
        loadingViewSpy.observe { viewModel in
            XCTAssertEqual(viewModel, LoadingViewModel(isLoading: true))
            exp.fulfill()
        }
        
        sut.getCharacter(viewModel: makeCharacterViewModel())
        wait(for: [exp], timeout: 1)
        
        let exp2 = expectation(description: "waiting")
        loadingViewSpy.observe { viewModel in
            XCTAssertEqual(viewModel, LoadingViewModel(isLoading: false))
            exp2.fulfill()
        }
        getCharacterSpy.completeWithErro(.unexpected)
        wait(for: [exp2], timeout: 1)
      
    }


}

extension ListCharactersPresenterTests {
    func makeSut(alertView: AlertViewSpy = AlertViewSpy(), responseValidator: ResponseValidatorSpy = ResponseValidatorSpy(), getCharacters: GetCharactersSpy = GetCharactersSpy(), loadingView: LoadingViewSpy = LoadingViewSpy(), file: StaticString = #file, line: UInt = #line) -> CharactersPresenter {
        let sut = CharactersPresenter(alertView: alertView, loadingView: loadingView, getCharacters: getCharacters)
        checkMemoryLeak(for: sut)
        return sut
    }
}
