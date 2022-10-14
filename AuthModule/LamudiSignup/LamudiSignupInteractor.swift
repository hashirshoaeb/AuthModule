//
//  LamudiSignupInteractor.swift
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

protocol LamudiSignupBusinessLogic: SignupBusinessLogic {
    func onLastNameChanged(value: String?)
}

protocol LamudiSignupDataStore: SignupDataStore {
    var lastName: String? { get set }
}

class LamudiSignupInteractor: SignupInteractor, LamudiSignupBusinessLogic, LamudiSignupDataStore {
    var lastName: String?

    
    private let presenter: LamudiSignupPresentationLogic
    
    init(presenter: LamudiSignupPresentationLogic) {
        self.presenter = presenter
        super.init(presenter: presenter)
    }

    
    // MARK: Do something
    
    func onLastNameChanged(value: String?) {
        lastName = value
        presenter.removeLastNameValidationError()
    }
    
    override func validate() -> Bool {
        var validationSuccess = super.validate()
        if let lastName = lastName {
            if lastName.isEmpty {
                presenter.showLastNameValidationError(error: "Last name is empty")
                validationSuccess = false
            }
        } else {
            presenter.showLastNameValidationError(error: "Last name is empty")
            validationSuccess = false
        }
        return validationSuccess
    }
    
}
