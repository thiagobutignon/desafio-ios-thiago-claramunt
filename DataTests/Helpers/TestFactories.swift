//
//  TestFactories.swift
//  DataTests
//
//  Created by Thiago B Claramunt on 06/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

func makeUrl() -> URL {
    return URL(string: "http://any-url.com")!
}

func makeEmptyData() -> Data {
    return Data()
}

func makeValidData() -> Data {
    return Data("{\"name\": \"Thiago\"}".utf8)
}

func makeInvalidData() -> Data {
    return Data("invalid_data".utf8)
}

func makeError() -> Error {
    return NSError(domain: "any_erro", code: 0)
}

func makeHttpResponse(statusCode: Int = 200) -> HTTPURLResponse{
    return HTTPURLResponse(url: makeUrl(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
    
}
