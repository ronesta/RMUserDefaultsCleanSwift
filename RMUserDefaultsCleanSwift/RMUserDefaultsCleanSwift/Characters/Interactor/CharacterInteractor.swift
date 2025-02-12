//
//  CharacterInteractor.swift
//  RMUserDefaultsCleanSwift
//
//  Created by Ибрагим Габибли on 12.02.2025.
//

import Foundation
import UIKit

protocol CharacterInteractorProtocol {
    func getCharacters()
    func loadImage(for character: CharacterViewModel, completion: @escaping (UIImage?) -> Void)
}

final class CharactersInteractor: CharacterInteractorProtocol {
    var presenter: CharacterPresenterProtocol?
    var worker: CharacterWorkerProtocol?

    init(presenter: CharacterPresenterProtocol?,
         worker: CharacterWorkerProtocol?
    ) {
        self.presenter = presenter
        self.worker = worker
    }

    func getCharacters() {
        worker?.getCharacters { [weak self] characters in
            self?.presenter?.presentCharacters(characters: characters)
        }
    }

    func loadImage(for character: CharacterViewModel, completion: @escaping (UIImage?) -> Void) {
        worker?.loadImage(for: character, completion: completion)
    }
}
