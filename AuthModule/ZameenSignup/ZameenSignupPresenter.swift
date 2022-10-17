//
//  ZameenSignupPresenter.swift
//  AuthModule
//
//  Created by Hashir Shoaib on 17/10/2022.
//

import Foundation

protocol ZameenSignupPresentationLogic: SignupPresentationLogic {
}

class ZameenSignupPresenter: SignupPresenter {
    // MARK: - VIP Setup
    
    private let viewController: ZameenSignupDisplayLogic
    
    init(viewController: ZameenSignupDisplayLogic) {
        self.viewController = viewController
        super.init(viewController: viewController)
    }
}

// MARK: - PRESENTATION LOGIC
extension ZameenSignupPresenter: ZameenSignupPresentationLogic {
}
