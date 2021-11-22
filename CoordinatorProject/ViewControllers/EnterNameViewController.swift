//
//  EnterNameViewController.swift
//  CoordinatorProject
//
//  Created by Maria on 14.11.2021.
//

import UIKit

class EnterNameViewController: UIViewController, FlowController {
    
    var completionHandler: ((String?) -> ())?
    
    private var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter name"
        
        return textField
    }()
    
    private let nextButton: UIButton = {
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Next", for: .normal)
        nextButton.addTarget(self, action: #selector(didPressNextButton), for: .touchUpInside)
        
        return nextButton
    }()
    
    private var userData: UserData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
    }
    
    func setup(userData: UserData) {
        self.userData = userData
    }
    
    private func addSubviews() {
        
        title = "EnterName"
        view.backgroundColor = .white
        
        let stackView = UIStackView(arrangedSubviews: [textField, nextButton])
        stackView.frame.size = CGSize(width:  200, height: 120)
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.center = view.center
        
        view.addSubview(stackView)
    }
    
    @objc
    private func didPressNextButton() {
        
        completionHandler?(textField.text)
//        userData.name = textField.text
//
//        let enterBirthdayViewController = EnterBirthdayViewController()
//        enterBirthdayViewController.setup(userData: userData)
//        navigationController?.pushViewController(enterBirthdayViewController, animated: true)
    }
}
