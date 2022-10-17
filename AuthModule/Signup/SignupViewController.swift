//
//  SignupViewController.swift
//  AuthModule
//
//  Created by Hashir Shoaib on 17/10/2022.
//

import Foundation

protocol SignupDisplayLogic {
    func showUsernameValidationError(error: String)
    func removeUsernameValidationError()
    func showEmailValidationError(error: String)
    func removeEmailValidationError()
    func showPasswordValidationError(error: String)
    func removePasswordValidationError()
    func showSignupInProgress()
    func removeSignupFromProgress()
}
