//
//  ViewController.swift
//  HomeWork1
//
//  Created by Саша Сенюта on 02.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signInButton(_ sender: Any) {
        
        guard let login = loginTextField.text,
              let password = passwordTextField.text,
              login == "",
              password == "" else {
                  
                  let alertVC = UIAlertController(title: "Error", message: "Incorrect login or password", preferredStyle: .alert)
                  
                  let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                  
                  alertVC.addAction(okAction)
                  
                  present(alertVC, animated: true, completion: nil)
                  
                  return}
       
        performSegue(withIdentifier: "fromLoginToTabbar", sender: nil)
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

