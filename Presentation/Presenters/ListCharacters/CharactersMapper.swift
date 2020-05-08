//
//  ListCharactersMapper.swift
//  Presentation
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Domain

public final class CharactersMapper {
    static func charactersModel(viewModel: CharactersViewModel) -> GetCharactersModel {
        return GetCharactersModel(code: viewModel.character!.code, status: viewModel.character!.status, copyright: viewModel.character!.copyright, attributionText: viewModel.character!.attributionText, attributionHTML: viewModel.character!.attributionHTML, etag: viewModel.character!.etag, data: viewModel.character!.data)
    }
}
