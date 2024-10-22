//
//  LoginView.swift
//  Meu Patrimonio
//
//  Created by Jobson Batista on 19-10-2024.
//

import UIKit
import Foundation

class LoginView: UIView {
    
    private let NAME_APP = "Meu Patrimônio"
    
    public lazy var loginView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        view.backgroundColor = UIColor.cSecondary
        view.layer.cornerRadius = 30
        return view
    }()
    
    private lazy var logoImage: UIImageView = {
        let logoView = UIImageView()
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.image = UIImage(named: "logo2")
        logoView.contentMode = .scaleAspectFit
        return logoView
    }()
    
    private lazy var logoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = NAME_APP
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.textAlignment = .center
        label.textColor = UIColor.cPrimary
        return label
    }()
    
    private lazy var inputEmail: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite seu email..."
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.textColor = UIColor.gray
        
        // Criando espaçamento de 10pt para a esquerda e direita
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.rightView = paddingView
        textField.rightViewMode = .always
        return textField
    }()
    
    private lazy var inputPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite sua senha..."
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.textColor = UIColor.gray
        textField.isSecureTextEntry = true
        
        // Criando espaçamento de 10pt para a esquerda e direita
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        textField.rightView = paddingView
        textField.rightViewMode = .always
        return textField
    }()
    
    private lazy var loginButtom: UIButton = {
        let button = UIButton()
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.cSecondary, for: .normal)
        button.backgroundColor = UIColor.cPrimary
        button.layer.cornerRadius = 5
        return button
    }()
    
    private lazy var forgetPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Esqueci minha senha"
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        label.textAlignment = .right
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            logoImage,
            logoLabel,
            inputEmail,
            inputPassword,
            loginButtom,
            forgetPasswordLabel
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    func setConstraints(superview: UIView) {
        // loginView
        NSLayoutConstraint.activate([
            loginView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor),
            loginView.topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: 80),
            loginView.bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
        
        // logoImage
        NSLayoutConstraint.activate([
            logoImage.heightAnchor.constraint(equalToConstant: 60)
        ])
        
      // stackView
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 150),
            stackView.leadingAnchor.constraint(equalTo: loginView.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: loginView.trailingAnchor, constant: -30),
            stackView.bottomAnchor.constraint(lessThanOrEqualTo: loginView.bottomAnchor, constant: -150),
            stackView.centerYAnchor.constraint(equalTo: loginView.safeAreaLayoutGuide.centerYAnchor, constant: .zero),
            stackView.centerXAnchor.constraint(equalTo: loginView.safeAreaLayoutGuide.centerXAnchor, constant: .zero)
        ])

        // email, password and buttom
        NSLayoutConstraint.activate([
            inputEmail.heightAnchor.constraint(equalToConstant: 44),
            inputPassword.heightAnchor.constraint(equalToConstant: 44),
            loginButtom.heightAnchor.constraint(equalToConstant: 44)
        ])
        
    }
    
    // MARK: Getter and Setter
    
    func getInputEmail() -> UITextField {
        return self.inputEmail
    }
    
    func getInputPassword() -> UITextField {
        return self.inputPassword
    }
    
    func getLoginButtom() -> UIButton {
        return self.loginButtom
    }
    
}
