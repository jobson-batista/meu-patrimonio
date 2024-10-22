//
//  ViewController.swift
//  Meu Patrimonio
//
//  Created by Jobson Batista on 19-10-2024.
//

import UIKit

class ViewController: UIViewController {
    
    let login = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Rodando...")
        setupView()
        // Do any additional setup after loading the view.
    }
    
    private func setupView() {
        view.backgroundColor = UIColor.cPrimary
        setHierarchy()
        setContraints()
        setGesture()
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
    
}

