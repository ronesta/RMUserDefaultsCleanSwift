//
//  CharactersList.swift
//  RMUserDefaultsCleanSwift
//
//  Created by Ибрагим Габибли on 12.02.2025.
//

import Foundation

enum CharactersList {
    struct Request {
        // Можем использовать для фильтрации списка или пагинации (если требуется)
    }

    struct Response {
        let characters: [Character]
    }

    struct ViewModel {
        let characters: [CharacterViewModel]
    }
}
