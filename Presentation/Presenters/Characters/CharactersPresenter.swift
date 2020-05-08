//
//  ListCharacters.swift
//  Presentation
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Domain

public protocol CharacterDataProviderDelegate: class {
    func success(character: CharactersDataWrapper)
}

public final class CharactersPresenter {
    public weak var delegate: CharacterDataProviderDelegate?
    private var characters: CharactersDataWrapper?
    private let alertView: AlertView
    private let loadingView: LoadingView
    private let getCharacters: GetCharacters

    
    public init(alertView: AlertView, loadingView: LoadingView, getCharacters: GetCharacters ) {
        self.alertView = alertView
        self.loadingView = loadingView
        self.getCharacters = getCharacters

        
    }
    
    public func getCharacter(viewModel: CharactersViewModel) {
        loadingView.display(viewModel: LoadingViewModel(isLoading: true))
        getCharacters.get { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .failure:
                self.alertView.showMessage(viewModel: AlertViewModel(title: "Erro", message: "Algo inesperado aconteceu"))
            case .success(let character):
                self.alertView.showMessage(viewModel: AlertViewModel(title: "Sucesso", message: "Lista de Personagens carregadas com sucesso"))
                self.characters = character
                self.delegate?.success(character: self.characters!)
                
            }
            self.loadingView.display(viewModel: LoadingViewModel(isLoading: false))
        }
    }
    
    public func countCharacter() -> Int {
        return (characters?.data.results.count)!
    }
    
    public func getCharacterOnly(at index: Int) -> Character {
        return (self.characters?.data.results[index])!
    }
}
