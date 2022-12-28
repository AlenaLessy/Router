//
//  MainCoctailsBarViewController.swift
//  Router
//
//  Created by Алена Панченко on 27.12.2022.
//

import UIKit

/// Главный экран приложения
final class MainCoctailsBarViewController: UIViewController {
    
    // MARK: - Private Constants
    
    private enum Constants {
        static let userDefaultKey = "login"
    }
    
    // MARK: - Private Properties
   
    private var mainRouter: MainRouter?
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainRouterConfigure()
    }

    // MARK: Private IBAction
    
    @IBAction private func toBarButtonAction(_ sender: Any) {
        mainRouter?.toCoctailsVC()
    }
    
    @IBAction private func toAboutUsButtonAction(_ sender: Any) {
        mainRouter?.toAboutUsVC()
    }
    
    @IBAction private func toBackButtonAction(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: Constants.userDefaultKey)
        mainRouter?.toApplicationVC()
    }
    
    // MARK: - Private Methods
    
    private func mainRouterConfigure() {
        mainRouter = MainRouter(viewController: self)
    }
}
