//
//  PokeDexButton.swift
//  Pokemon App
//
//  Created by Ethan Gonsalves on 2022-11-04.
//

import UIKit

class PokeDexButton: UIButton {
    //THIS CLASS IS FOR THE BASE CODE OF EACH BUTTON USED
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        //this is a init method so you can easily change the title and color of each button
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()  //have to call it twice
    }
    private func configure() {
        //this is the default settings i want for each button 
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 5
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        titleLabel?.font = UIFont.systemFont(ofSize: 22)
    }

}
