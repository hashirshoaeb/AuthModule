//
//  LamudiSignupViewController.swift
//  AuthModule
//
//  Created by Hadi on 16/08/2022.
//  Copyright (c) 2022 hashirshoaeb. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LamudiSignupDisplayLogic: SignupDisplayLogic {
    func showLastNameValidationError(error: String)
    func removeLastNameValidationError()
}

class LamudiSignupViewController: UIViewController, VIPSetup {
    // MARK: - IBOutlets
    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameErrorMessageLabel: UILabel!
    @IBOutlet weak var emailErrorMessageLabel: UILabel!
    @IBOutlet weak var passwordMessageLabel: UILabel!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var lastNameErrorMessageLabel: UILabel!
    
    // MARK: - VIP Setup
    
    var interactor: LamudiSignupBusinessLogic?
    var router: (NSObjectProtocol & LamudiSignupRoutingLogic & LamudiSignupDataPassing)?
    
    func setup(){
        let viewController = self
        let presenter = LamudiSignupPresenter(viewController: viewController)
        let interactor = LamudiSignupInteractor(presenter: presenter)
        let router = LamudiSignupRouter()
        viewController.interactor = interactor
        viewController.router = router
        // router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: - View Life Cycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        if let scene = segue.identifier {
        //            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
        //            if let router = router, router.responds(to: selector) {
        //                router.perform(selector, with: segue)
        //            }
        //        }
    }
    
    // MARK: - IBActions
    
    @IBAction func onUsernameChanged(_ sender: UITextField) {
        interactor?.onUsernameChanged(value: sender.text)
    }
    
    @IBAction func onEmailChanged(_ sender: UITextField) {
        interactor?.onEmailChanged(value: sender.text)
    }
    
    @IBAction func onPasswordChanged(_ sender: UITextField) {
        interactor?.onPasswordChanged(value: sender.text)
    }
    
    @IBAction func onSignupButtonTapped(_ sender: UIButton) {
        interactor?.onSignupButtonPressed()
    }
    
    @IBAction func onLastNameChanged(_ sender: UITextField) {
        interactor?.onLastNameChanged(value: sender.text)
    }

}

extension LamudiSignupViewController: LamudiSignupDisplayLogic {
    // MARK: - DISPLAY LOGIC
    
    func showUsernameValidationError(error: String) {
        usernameErrorMessageLabel.text = error
    }
    
    func removeUsernameValidationError() {
        usernameErrorMessageLabel.text = ""
    }
    
    func showEmailValidationError(error: String) {
        emailErrorMessageLabel.text = error
    }
    
    func removeEmailValidationError() {
        emailErrorMessageLabel.text = ""
    }
    
    func showPasswordValidationError(error: String) {
        passwordMessageLabel.text = error
    }
    
    func removePasswordValidationError() {
        passwordMessageLabel.text = ""
    }
    
    func showSignupInProgress() {
        
    }
    
    func removeSignupFromProgress() {
        print("sign up success")
    }
    
    func showLastNameValidationError(error: String) {
        lastNameErrorMessageLabel.text = error
    }
    
    func removeLastNameValidationError() {
        lastNameErrorMessageLabel.text = ""
    }
}
