//
//  ViewController.swift
//  PrimeiroProjetoAcessibilidadeCurso
//
//  Created by Bruno Matos Silva on 01/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
        configAcessibility()
    }
    
    func configAcessibility() {
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionForLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
        screen?.titleLabel.isAccessibilityElement = true
        screen?.loginButton.isAccessibilityElement = true
        screen?.profileImageView.isAccessibilityElement = true
        
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição três"
        screen?.positionForLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        screen?.profileImageView.accessibilityLabel = "Imagem de perfil de uma pessoa"
        
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionForLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        
        screen?.titleLabel.accessibilityTraits = .header
        screen?.loginButton.accessibilityTraits = .button
        screen?.profileImageView.accessibilityTraits = .image
        
        guard let primeiro = screen?.positionOneLabel,
              let segundo = screen?.positionTwoLabel,
              let terceiro = screen?.positionThreeLabel,
              let quarto = screen?.positionForLabel,
              let quinto = screen?.positionFiveLabel,
        let button = screen?.loginButton,
        let title = screen?.titleLabel,
        let img = screen?.profileImageView else { return }
        
        view.accessibilityElements = [primeiro, segundo, terceiro, quarto, quinto, button, title, img]
    }
}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        UIAccessibility.post(notification: .announcement, argument: "Teste o botão foi pressionado!")    }
    
    
}
