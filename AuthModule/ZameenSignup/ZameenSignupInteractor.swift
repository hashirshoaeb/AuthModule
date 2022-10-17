//
//  ZameenSignupInteractor.swift
//  AuthModule
//
//  Created by Hashir Shoaib on 17/10/2022.
//

import Foundation

protocol ZameenSignupBusinessLogic: SignupBusinessLogic {
}

protocol ZameenSignupDataStore: SignupDataStore {
}

class ZameenSignupInteractor: SignupInteractor, ZameenSignupBusinessLogic, ZameenSignupDataStore {
    
    private let presenter: ZameenSignupPresentationLogic
    
    init(presenter: ZameenSignupPresentationLogic) {
        self.presenter = presenter
        super.init(presenter: presenter)
    }
}
