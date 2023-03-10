//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Aleksandr Aniskin on 09.02.2023.
//

import Foundation

/// Represent unique API endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
