//
//  ApplicationCoordinator.swift
//  Router
//
//  Created by Алена Панченко on 27.12.2022.
//

import UIKit
/// Роутер главного экрана
final class MainRouter: BaseRouter {
    
    // MARK: - Private Constants
    
    private enum Constants {
        static let segueCoctailsIdentifier = "Coctails"
        static let segueAboutUsIdentifier = "AboutUs"
        static let segueMainIdentifier = "Main"
    }
    
    // MARK: - Initializers
    
    override init(viewController: UIViewController) {
        super.init(viewController: viewController)
    }
    
    // MARK: - Public Methods
    
    func toAboutUsVC() {
        perform(segue: Constants.segueAboutUsIdentifier)
    }
    
    func toCoctailsVC() {
        perform(segue: Constants.segueCoctailsIdentifier)
    }
    
    func toApplicationVC() {
        perform(segue: Constants.segueMainIdentifier)
    }
 
}
