//
//  ListCharactersViewController.swift
//  UI
//
//  Created by Thiago B Claramunt on 08/05/20.
//  Copyright © 2020 Thiago B Claramunt. All rights reserved.
//

import Foundation
import UIKit
import Presentation



public final class ListCharactersViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tableView: UITableView!
    public var getCharacter: ((CharactersViewModel) -> Void)?
    public override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
}

extension ListCharactersViewController: UITableViewDataSource, UITableViewDelegate {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let numberOfCharacters: Int = 0 else { return 0}
        return numberOfCharacters
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let character = else { return UITableViewCell()}
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as? CharacterCell {
//            cell.characterNameLabel.text = character.name
//            let imageUrl = character.thumbnail.path + "." + character.thumbnail.thumbnailExtension.rawValue
//
//
//            cell.characterImage.sd_setImage(with: URL(string: imageUrl))
//            return cell
//        }
        return UITableViewCell()
    }
    
    
}

extension ListCharactersViewController: LoadingView {
    public func display(viewModel: LoadingViewModel) {
        if viewModel.isLoading {
            view.isUserInteractionEnabled = false
            loadingIndicator?.startAnimating()
        } else {
            view.isUserInteractionEnabled = true
            loadingIndicator?.stopAnimating()
        }
    }
}

extension ListCharactersViewController: AlertView {
    public func showMessage(viewModel: AlertViewModel) {
        let alert = UIAlertController(title: viewModel.title, message: viewModel.message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
}

extension ListCharactersViewController: DisplayCharactersView {
    public func showCharacters(viewModel: DisplayCharactersViewModel) {
        print(viewModel.data)
    }
    
 
    
    
}
