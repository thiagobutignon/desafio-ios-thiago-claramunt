//
//  ListCharacters.swift
//  Presentation
//
//  Created by Thiago B Claramunt on 07/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import Domain

public final class CharactersPresenter {
    private var charactersView: DisplayCharactersView
    private let alertView: AlertView
    private let loadingView: LoadingView
    private let getCharacters: GetCharacters

    
    public init(alertView: AlertView, loadingView: LoadingView, getCharacters: GetCharacters, charactersView: DisplayCharactersView ) {
        self.alertView = alertView
        self.loadingView = loadingView
        self.getCharacters = getCharacters
        self.charactersView = charactersView
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
                self.charactersView.showCharacters(viewModel: DisplayCharactersViewModel(data: character))
                
            }
            self.loadingView.display(viewModel: LoadingViewModel(isLoading: false))
        }
    }
}
