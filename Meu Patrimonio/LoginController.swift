//
//  LoginController.swift
//  Meu Patrimonio
//
//  Created by Jobson Batista on 19-10-2024.
//

import UIKit

class LoginController: UIViewController {
    
    let login = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Rodando...")
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = UIColor.cPrimary
        setHierarchy()
        setContraints()
        setGesture()
        login.getLoginButtom().addTarget(self, action: #selector(doLogin), for: .touchUpInside)
    }
    
    private func setHierarchy() {
        view.addSubview(login.loginView)
    }
    
    private func setContraints() {
        login.setConstraints(superview: view)
    }
    
    private func setGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    // Função que esconde o teclado
    /*Deve-se usar @objc nos seguintes casos:
        Métodos que serão usados como seletores: Em Swift, para usar métodos em target-action (por exemplo, com UIButton) ou em gestos como UITapGestureRecognizer, o método precisa ser marcado com @objc porque essas APIs são baseadas no Objective-C e usam seletores (Selector).
        Funções que você quer expor para o Objective-C: Isso inclui funções de classes, propriedades e inicializadores que precisam ser acessíveis por classes Objective-C.
     */
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    @objc func doLogin() {
        if let login = login.getInputEmail().text {
            print("Login: \(login)")
        }
        if let pass = login.getInputPassword().text  {
            print("Password: \(pass)")
        }
    }
    
}

