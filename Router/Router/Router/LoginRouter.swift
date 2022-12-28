//
//  ApplicationCoordinator.swift
//  Router
//
//  Created by Алена Панченко on 27.12.2022.
//

import UIKit

/// Роутер входа
final class LoginRouter: BaseRouter {
    
    // MARK: - Private Constants
    
    private enum Constants {
        static let segueRegistrationIdentifier = "Registration"
        static let segueMainIdentifier = "Main"
        static let userDefaultsKey = "login"
    }
    
    // MARK: - Initializers
    
    override init(viewController: UIViewController) {
        super.init(viewController: viewController)
    }
    
    // MARK: - Public Methods
    
    func toRegistrationVC() {
        perform(segue: Constants.segueRegistrationIdentifier)
    }
    
    func toMainVC() {
        if UserDefaults.standard.bool(forKey: Constants.userDefaultsKey) {
            perform(segue: Constants.segueMainIdentifier)
        }
    }
}
