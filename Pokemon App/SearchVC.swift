//
//  SearchVC.swift
//  Pokemon App
//
//  Created by Ethan Gonsalves on 2022-11-04.
//

import UIKit

class SearchVC: UIViewController {
    //this
    //is
    //the
   // search
   // screen
    let searchImage = UIImageView()
    let usernameTextField = PokeDexTextField() //PokeDexTextField.swift
    let searchButton = PokeDexButton(backgroundColor: .darkGray, title: "Search") //PokeDexButton.swift
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        configureSearchImageView()
        configureTextField()
        configureButton()
        dismissKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true // this peach of code is to hide the navigation BAR when you click back
        //becuase  viewdidLoad only loads once so you have to call it in this function (viewwillappear)
    }
    
      func dismissKeyboard() { //this function is to dismiss the keyboard on click
          let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
          view.addGestureRecognizer(tap)
    }
    func configureSearchImageView() {
        view.addSubview(searchImage)
        
        searchImage.translatesAutoresizingMaskIntoConstraints = false
        searchImage.image = UIImage(named: "Pikachu-home")
         searchImage.contentMode = .scaleAspectFit
        NSLayoutConstraint.activate([
        
            searchImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            searchImage.heightAnchor.constraint(equalToConstant: 330)
        ])
    }
    func configureTextField() {
        view.addSubview(usernameTextField)
        usernameTextField.delegate = self
        NSLayoutConstraint.activate([
        
            usernameTextField.heightAnchor.constraint(equalToConstant: 50),
            usernameTextField.widthAnchor.constraint(equalToConstant: 300),
            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            usernameTextField.topAnchor.constraint(equalTo: searchImage.bottomAnchor, constant: 10)
            
        ])
    }
    
    func configureButton() {
        
        view.addSubview(searchButton)
        NSLayoutConstraint.activate([
            searchButton.heightAnchor.constraint(equalToConstant: 50),
            searchButton.widthAnchor.constraint(equalToConstant: 300),
            searchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
    }
}
extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Test")
        return true
    }
}

