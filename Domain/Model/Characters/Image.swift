//
//  Image.swift
//  Domain
//
//  Created by Thiago B Claramunt on 30/04/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation

public struct Image: Model {
    public let path: String
    public let thumbnailExtension: ImageExtension

    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
    
    public init(path: String, thumbnailExtension: ImageExtension) {
        self.path = path
        self.thumbnailExtension = thumbnailExtension
    }
}
