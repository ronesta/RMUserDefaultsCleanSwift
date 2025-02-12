//
//  CharacterPresenter.swift
//  RMUserDefaultsCleanSwift
//
//  Created by Ибрагим Габибли on 12.02.2025.
//

import Foundation

protocol CharacterPresenterProtocol {
    func presentCharacters(characters: [Character])
    func presentError(_ message: String)
}

final class CharacterPresenter: CharacterPresenterProtocol {
    weak var viewController: CharacterViewProtocol?

    func presentCharacters(characters: [Character]) {
        let viewModel = characters.map {
            CharacterViewModel(name: $0.name,
                               status: $0.status,
                               species: $0.species,
                               gender: $0.gender,
                               location: $0.location,
                               image: $0.image
            )
        }
        viewController?.displayCharacters(viewModel: viewModel)
    }

    func presentError(_ message: String) {
        viewController?.displayError(message)
    }
}
