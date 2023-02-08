//
//  RMService.swift
//  RickAndMorty
//
//  Created by Aleksandr Aniskin on 09.02.2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///     - request: Request instance
    ///     - completition: Callback with data or error
    public func execute(_ request: RMRequest, completition: @escaping () -> Void) {
        
    }
}
