//
//  LamudiSignupPresenter.swift
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

protocol LamudiSignupPresentationLogic: SignupPresentationLogic {
    func showLastNameValidationError(error: String)
    func removeLastNameValidationError()
}

class LamudiSignupPresenter: SignupPresenter {
    // MARK: - VIP Setup
    
    private let viewController: LamudiSignupDisplayLogic
    
    init(viewController: LamudiSignupDisplayLogic) {
        self.viewController = viewController
        super.init(viewController: viewController)
    }
}

// MARK: - PRESENTATION LOGIC
extension LamudiSignupPresenter: LamudiSignupPresentationLogic {
    func showLastNameValidationError(error: String) {
        viewController.showLastNameValidationError(error: error)
    }
    
    func removeLastNameValidationError() {
        viewController.removeLastNameValidationError()
    }
}
