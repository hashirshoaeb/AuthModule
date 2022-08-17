//
//  LamudiSignupViewController.swift
//  AuthModule
//
//  Created by Hadi on 16/08/2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LamudiSignupDisplayLogic
{
    func showLastNameValidationError(error: String)
    func removeLastNameValidationError()
}

class LamudiSignupViewController: SignupViewController, LamudiSignupDisplayLogic
{
    
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var lastNameErrorMessageLabel: UILabel!
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    override func setup()
    {
        super.setup()
        let viewController = self
        let presenter = LamudiSignupPresenter(viewController: viewController)
        let interactor = LamudiSignupInteractor(presenter: presenter)
        let router = LamudiSignupRouter()
        viewController.interactor = interactor
        viewController.router = router
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    // MARK: Do something
    
    @IBAction func onLastNameChanged(_ sender: UITextField) {
        (interactor as! LamudiSignupBusinessLogic).onLastNameChanged(value: sender.text)
    }
    
    func showLastNameValidationError(error: String) {
        lastNameErrorMessageLabel.text = error
    }
    
    func removeLastNameValidationError() {
        lastNameErrorMessageLabel.text = ""
    }
}
