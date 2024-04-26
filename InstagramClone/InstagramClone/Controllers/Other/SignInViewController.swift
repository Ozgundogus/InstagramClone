//
//  SignInViewController.swift
//  InstagramClone
//
//  Created by Ozgun Dogus on 30.03.2024.
//

import UIKit
import SafariServices

class SignInViewController: UIViewController , UITextFieldDelegate {

    //MARK: - Subviews
    private let headerview = SignInHeaderView()
    
    private let emailField : IGTextField = {
        let field = IGTextField()
        field.placeholder = "Username or Email..."
        field.returnKeyType = .continue
        field.keyboardType = .emailAddress
        field.autocorrectionType = .no
        return field
    }()
    
    private let passwordField : IGTextField = {
        let field = IGTextField()
        field.placeholder = "Password"
        field.isSecureTextEntry = true
        field.returnKeyType = .next
        field.keyboardType = .default
        field.autocorrectionType = .no
        return field
    }()
    
    private let signInButton : UIButton = {
        
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
        
    }()
    
    private let createAccountButton : UIButton = {
        
        let button = UIButton()
        button.setTitle("Create Account", for: .normal)
        button.setTitleColor(.link, for: .normal)
        return button
        
    }()
    
    private let termsButton : UIButton = {
        
        let button = UIButton()
        button.setTitle("Terms of Service", for: .normal)
        button.setTitleColor(.link, for: .normal)
        return button
        
    }()
    
    private let privacyButton : UIButton = {
        
        let button = UIButton()
        button.setTitle("Privacy Policy", for: .normal)
        button.setTitleColor(.link, for: .normal)
        return button
        
    }()
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Sign In"
        view.backgroundColor = .secondarySystemBackground
        headerview.backgroundColor = .red
        addSubviews()
        emailField.delegate = self
        passwordField.delegate = self
        
        addButtonActions()
        
        }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        headerview.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: (view.height-view.safeAreaInsets.top)/3 )
        emailField.frame = CGRect(x: 25, y: headerview.bottom+20, width: view.width-50, height: 50)
        passwordField.frame = CGRect(x: 25, y: emailField.bottom+10, width: view.width-50, height: 50)
        signInButton.frame = CGRect(x: 35, y: passwordField.bottom+20, width: view.width-70, height: 50)
        createAccountButton.frame = CGRect(x: 35, y: signInButton.bottom+20, width: view.width-70, height: 50)
        termsButton.frame = CGRect(x: 35, y: createAccountButton.bottom+50, width: view.width-70, height: 40)
        privacyButton.frame = CGRect(x: 35, y: termsButton.bottom+10, width: view.width-70, height: 40)
    }

    
    private func addSubviews() {
        view.addSubview(headerview)
        view.addSubview(emailField)
        view.addSubview(passwordField)
        view.addSubview(signInButton)
        view.addSubview(createAccountButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
    }
    
    private  func addButtonActions () {
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        createAccountButton.addTarget(self, action: #selector(didTapCreateAccount), for: .touchUpInside)
        termsButton.addTarget(self, action: #selector(didTapTerms), for: .touchUpInside)
        privacyButton.addTarget(self, action: #selector(didTapPrivacy), for: .touchUpInside)
    }
    
    // MARK: - Actions
    
    @objc private func didTapSignIn(){
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        
        guard let email = emailField.text,
              let password = passwordField.text,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
               password.count >= 6 else {
            return
        }
          // Sign in with authManager
    }
    
    @objc private func didTapCreateAccount(){
      
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc private func didTapTerms(){
       
        guard let url = URL(string: "https://www.instagram.com") else {
            return
        }
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true)
    }
    
    @objc private func didTapPrivacy(){
        
        guard let url = URL(string: "https://www.instagram.com") else {
            return
        }
        let vc = SFSafariViewController(url: url)
        present(vc, animated: true)
    }
   
    
    
   // Mark: - Field Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailField {
            passwordField.becomeFirstResponder()
        }
        else {
            textField.resignFirstResponder()
            didTapSignIn()
        }
        return true
    }
    
}
