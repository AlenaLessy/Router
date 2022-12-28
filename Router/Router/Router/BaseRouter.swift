//
//  BaseRouter.swift
//  Router
//
//  Created by Алена Панченко on 27.12.2022.
//

import UIKit

/// Базовый класс роутера
class BaseRouter: NSObject {
    
    // MARK: - Public Visual Components
    
    var viewController: UIViewController
    
    // MARK: - Initializers
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }

    // MARK: - Public Methods
    
    func perform<Controller: UIViewController>(segue: String, performAction: ((Controller) -> Void)? = nil) {
        performAction.map { action in { (controller: UIViewController) in
            guard let controller = controller as? Controller else { return }
            action(controller) }
        }
        viewController.performSegue(withIdentifier: segue, sender: performAction)
    }

    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let action = sender as? ((UIViewController) -> Void) else {
            return
        }
        action(segue.destination)
    }
}
