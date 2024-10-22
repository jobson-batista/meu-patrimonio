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
        textField.layer.borderColor = UIColor.cPrimary.cgColor
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
        textField.layer.borderColor = UIColor.cPrimary.cgColor
        textField.textColor = UIColor.gray
        
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
        //button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return button
    }()

    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            logoImage,
            logoLabel,
            inputEmail,
            inputPassword,
            loginButtom
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        return stackView
    }()
    
    func setConstraints(superview: UIView) {
        // loginView
        NSLayoutConstraint.activate([
            loginView.leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor),
            loginView.topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: 100),
            loginView.bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
        
        // logoImage
        NSLayoutConstraint.activate([
            logoImage.heightAnchor.constraint(equalToConstant: 60)
        ])
        
      // stackView
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: loginView.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: loginView.trailingAnchor, constant: -30),
            stackView.bottomAnchor.constraint(lessThanOrEqualTo: loginView.bottomAnchor, constant: -10)
        ])

        // email, password and buttom
        NSLayoutConstraint.activate([
            inputEmail.heightAnchor.constraint(equalToConstant: 44),
            inputPassword.heightAnchor.constraint(equalToConstant: 44),
            loginButtom.heightAnchor.constraint(equalToConstant: 44)
        ])
        
    }
    
}
