//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Aleksandr Aniskin on 12.02.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
