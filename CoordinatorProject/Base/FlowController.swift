//
//  FlowController.swift
//  CoordinatorProject
//
//  Created by Maria on 15.11.2021.
//

import Foundation

protocol FlowController {
    
    associatedtype T
    var completionHandler: ((T) -> ())? { get set }
}
