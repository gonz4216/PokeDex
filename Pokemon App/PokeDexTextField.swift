//
//  PokeDexTextField.swift
//  Pokemon App
//
//  Created by Ethan Gonsalves on 2022-11-04.
//

import UIKit

class PokeDexTextField: UITextField {
    //THIS CLASS IS FOR THE BASE CODE OF THE TEXTFIELD USED

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure() //calling the function
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        //this is making the base style code for my Textfield
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 5
        layer.borderColor = UIColor.systemGray2.cgColor
        layer.borderWidth = 2
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        autocapitalizationType = .none
        returnKeyType = .go
        placeholder = "Enter a Pokémon"
    }
}
