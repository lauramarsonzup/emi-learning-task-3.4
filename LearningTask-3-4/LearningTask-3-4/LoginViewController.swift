//
//  ViewController.swift
//  LearningTask-3-4
//
//  Created by Laura Pinheiro Marson on 18/10/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let title = "Logando"
        let message = "Fazendo login na sua conta..."
        
        showAlert(title: title, message: message)
    }
    
    @IBAction func recoverPasswordPressed(_ sender: UIButton) {
        guard let email = emailTextField.text else { return }
        
        let title = "Redefinir senha"
        let message = "Enviamos um email para \(email).\nSiga as instruções para criar uma nova senha segura."
        
        showAlert(title: title, message: message)
    }
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

