//
//  ViewController.swift
//  PrimeiroProjetoViewCodeCurso
//
//  Created by Bruno Matos Silva on 22/08/23.
//

import UIKit

class RegisterVC: UIViewController {
    
    private var registerScreen: RegisterScreen?
    private var viewModel: RegisterViewModel = RegisterViewModel()
    
    override func loadView() {
        registerScreen = RegisterScreen()
        view = registerScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        registerScreen?.delegate(delegate: self)
        registerScreen?.configTextFieldDelegate(delegate: self)
        viewModel.delegate(delegate: self)
    }
}

extension RegisterVC: RegisterScreenProtocol{
    func tappedReturnButton() {
        navigationController?.popViewController(animated: true);
    }
    
    func tappedRegisterButton() {
        viewModel.registerUser(email: registerScreen?.emailTextField.text ?? "", password: registerScreen?.passwordTextField.text ?? "")
    }
}

extension RegisterVC: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let email: String = registerScreen?.emailTextField.text ?? ""
        let password: String = registerScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !password.isEmpty {
            registerScreen?.registerButton.isEnabled = true
            registerScreen?.registerButton.backgroundColor = .black
            registerScreen?.registerButton.setTitleColor(.white, for: .normal)
        } else {
            registerScreen?.registerButton.isEnabled = false
            registerScreen?.registerButton.backgroundColor = .black.withAlphaComponent(0.4)
            registerScreen?.registerButton.setTitleColor(.white.withAlphaComponent(0.4), for: .normal)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
extension RegisterVC: RegisterViewModelProtocol {
    func successRegister() {
        let vc: HomeVC = HomeVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func errorRegister(errorMessage: String) {
        Alert(controller: self).showAlertInformation(title: "Ops, Error Cadastro!", message: errorMessage)
    }
    
    
    
}
