//
//  CharactersRepository.swift
//  RickAndMortyByLenar
//
//  Created by Ленар Бадыков on 22.10.2022.
//

import Foundation

final class CharactersRepository {
    
    private let apiClient: APIClient!
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func getCharacters(_ completion: @escaping ((Result<[CharacterModel]>) -> Void)) {
        let resource = Resource(url: URL(string: "https://rickandmortyapi.com/api/character")!)
        apiClient.load(resource) { (result) in
            switch result {
            case .success(let data):
                do {
                    let responseModel = try JSONDecoder().decode(CharactersResponseModel.self, from: data)
                    DispatchQueue.main.async {
                        completion(.success(responseModel.results))
                    }
                } catch {
                    DispatchQueue.main.async {
                        completion(.failure(error))
                    }
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    
}
