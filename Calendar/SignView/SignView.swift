//
//  ViewController.swift
//  Calendar
//
//  Created by Daniil on 15.10.2021.
//

import UIKit

class SignView: UIViewController
{
    var login = UITextField()
    var password = UITextField()
    var signIn = UIButton()
    var logIn = UIButton()
    
    
    @objc func signIn(_ sender: UIButton)
    {
        let setLogin = login.text
        let setPassword = password.text
    }
    
    @objc func goToLogView(_ sender: UIButton)
    {
        let logView = LogIn()
        navigationController?.pushViewController(logView, animated: true)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        title = "Вход"
        view.backgroundColor = .systemGray5
       
        
        login.frame = CGRect(x: 10, y: navigationController!.toolbar.frame.height + navigationController!.navigationBar.frame.height, width: self.view.frame.width - 20, height: self.view.frame.height / 10)
        login.layer.cornerRadius = login.frame.height / 10
        login.placeholder = "Логин"
        login.textAlignment = .center
        
        password.frame = CGRect(x: 10, y: login.frame.height + login.frame.origin.y + login.frame.height / 4, width: login.frame.width, height: login.frame.height)
        password.layer.cornerRadius = login.layer.cornerRadius
        password.placeholder = "Пароль"
        password.textAlignment = .center
        
        signIn.frame = CGRect(x: 10, y: password.frame.height + password.frame.origin.y + password.frame.height / 4, width: password.frame.width, height: password.frame.height)
        signIn.layer.cornerRadius = password.layer.cornerRadius
        signIn.setTitle("Вход", for: .normal)
        signIn.titleLabel?.textAlignment = .center
        signIn.addTarget(self, action: #selector(signIn(_:)), for: .touchDown)
        
        logIn.frame = CGRect(x: 10, y: signIn.frame.height + signIn.frame.origin.y + signIn.frame.height / 4, width: signIn.frame.width, height: signIn.frame.height)
        logIn.layer.cornerRadius = signIn.layer.cornerRadius
        logIn.setTitle("Зарегистрироваться", for: .normal)
        logIn.titleLabel?.textAlignment = .center
        logIn.addTarget(self, action: #selector(goToLogView(_:)), for: .touchDown)
        
        login.backgroundColor = .white
        password.backgroundColor = .white
        signIn.backgroundColor = .systemBlue
        logIn.backgroundColor = .systemBlue
        
        
        view.addSubview(login)
        view.addSubview(password)
        view.addSubview(signIn)
        view.addSubview(logIn)
        
        
    }
    
    
}
