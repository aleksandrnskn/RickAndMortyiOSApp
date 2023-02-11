//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Aleksandr Aniskin on 08.02.2023.
//

import UIKit

/// Controller to show and search Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Character"
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url!)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            
        }
    }

}
