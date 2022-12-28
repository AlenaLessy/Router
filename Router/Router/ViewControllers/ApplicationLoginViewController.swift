//
//  ApplicationLoginViewController.swift
//  Router
//
//  Created by Алена Панченко on 27.12.2022.
//

import UIKit

/// Экран входа в приложение
final class ApplicationLoginViewController: UIViewController {
    
    // MARK: - Private Constants
    
    private enum Constants {
        static let login = "1"
        static let password = "1"
        static let userDefaultKey = "login"
    }

    // MARK: Public IBOutlets
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
        
    // MARK: - Private Properties
    private var loginRouter: LoginRouter?
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginRouterConfigure()
    }
    
  // MARK: Private Methods
    
    @IBAction private func entryButtonAction(_ sender: Any) {
        guard let login = loginTextField.text,
              let password = passwordTextField.text,
              login == Constants.login,
              password == Constants.password
                else
        {
            print("Логин или пароль не соответствуют")
            return
        }
        UserDefaults.standard.set(true, forKey: Constants.userDefaultKey)
        loginRouter?.toMainVC()
    }
    
    @IBAction private func registrationButtonAction(_ sender: Any) {
        loginRouter?.toRegistrationVC()
    }
    
    private func loginRouterConfigure() {
        loginRouter = LoginRouter(viewController: self)
    }

}
