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
    private let alertView: AlertView
    private let loadingView: LoadingView
    private let getCharacters: GetCharacters
    private let responseValidator: ResponseValidator
    
    public init(alertView: AlertView, loadingView: LoadingView, getCharacters: GetCharacters, responseValidator: ResponseValidator) {
        self.alertView = alertView
        self.loadingView = loadingView
        self.getCharacters = getCharacters
        self.responseValidator = responseValidator
        
    }
    
    public func getCharacter() {
        loadingView.display(viewModel: LoadingViewModel(isLoading: true))
        getCharacters.get { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .failure:
                self.alertView.showMessage(viewModel: AlertViewModel(title: "Erro", message: "Algo inesperado aconteceu"))
            case .success:
                self.alertView.showMessage(viewModel: AlertViewModel(title: "Sucesso", message: "Lista de Personagens carregadas com sucesso"))
                
            }
            self.loadingView.display(viewModel: LoadingViewModel(isLoading: false))
        }
    }
    
    
}
