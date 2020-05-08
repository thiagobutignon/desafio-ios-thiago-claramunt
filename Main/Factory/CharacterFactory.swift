//
//  CharacterFactory.swift
//  Main
//
//  Created by Thiago B Claramunt on 08/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Infra
import Data
import Presentation
import UI

class CharacterFactory {
    static func makeController() -> ListCharactersViewController {
        let controller = ListCharactersViewController.instantiate()
        let url = URL(string: "https://gateway.marvel.com:443/v1/public/characters?ts=1588252114&apikey=e76cbab2212ff796ec498fef7eefe991&hash=0d6f127b3da6cbac0fdd727f3717f032")!
        let alamofireAdapter = AlamofireAdapter()
        let remoteGetCharacter = RemoteGetCharacters(url: url, httpClient: alamofireAdapter)
        let presenter = CharactersPresenter(alertView: controller, loadingView: controller, getCharacters: remoteGetCharacter)
        controller.getCharacter = presenter.getCharacter
        return controller
    }
}
