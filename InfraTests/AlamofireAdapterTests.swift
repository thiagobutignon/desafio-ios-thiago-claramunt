//
//  InfraTests.swift
//  InfraTests
//
//  Created by Thiago B Claramunt on 06/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import XCTest
import Alamofire

class AlamofireAdapter {
    func get(to url: URL) {
        
    }
}

class AlamofireAdapterTests: XCTestCase {
    func test_() {
        let url = makeUrl()
        let sut = AlamofireAdapter()
        sut.get(to: url)
    }
    
    
}
