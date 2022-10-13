//
//  SignupRouter.swift
//  AuthModule
//
//  Created by Hashir Shoaib on 15/08/2022.
//  Copyright (c) 2022 hashirshoaeb. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SignupRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol SignupDataPassing
{
    var dataStore: SignupDataStore? { get }
}

class SignupRouter: NSObject, SignupRoutingLogic, SignupDataPassing {
    weak var viewController: SignupViewController?
    var dataStore: SignupDataStore?
    
    // MARK: Routing
    
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}
    
    // MARK: Navigation
    
    //func navigateToSomewhere(source: SignupViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: SignupDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
