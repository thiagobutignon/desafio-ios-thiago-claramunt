//
//  Url.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct Url: Model {
    let type: String
    let url: String
    
    public init(type: String, url: String) {
        self.type = type
        self.url = url
    }
}
