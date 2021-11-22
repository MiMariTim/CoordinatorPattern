//
//  CoordinatorFactory.swift
//  CoordinatorProject
//
//  Created by Maria on 15.11.2021.
//

import Foundation
import UIKit

class CoordinatorFactory {
    
    func createRegistrationCoordinator(navigationController: UINavigationController) -> RegistrationCoordinator {
        RegistrationCoordinator(navigationController: navigationController)
    }
    
    func createAppCoordinator(navigationController: UINavigationController) -> AppCoordinator {
        AppCoordinator(navigationController: navigationController)
    }
}
