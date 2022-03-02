//
//  ProfileHeaderView.swift
//
//
//  Created by MacBook on 17.02.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var name: UILabel
    var photo: UIImageView
    var button: UIButton
    var status: UILabel
    var statusField: UITextField
    var statusText = ""
    
    
    init() {
        name = UILabel()
        photo = UIImageView(image: UIImage(named: "lala"))
        button = UIButton()
        status = UILabel()
        statusField = UITextField()

        super.init(frame: CGRect())
    
        //name
        name.translatesAutoresizingMaskIntoConstraints = false
        name.text = "Зайка"
        name.textAlignment = .natural
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        self.addSubview(name)
        

        photo.translatesAutoresizingMaskIntoConstraints = false
        photo.clipsToBounds = true
        photo.layer.cornerRadius = 50
        photo.layer.borderWidth = 3
        photo.layer.borderColor = CGColor(red: 255, green: 255, blue: 255, alpha: 1)
        self.addSubview(photo)
        
        status.translatesAutoresizingMaskIntoConstraints = false
        status.text = "ждю"
        status.textColor = .gray
        status.textAlignment = .natural
        status.isUserInteractionEnabled = true
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        self.addSubview(status)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        button.layer.cornerRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.setTitle("Установить статус", for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        self.addSubview(button)
        
        statusField.translatesAutoresizingMaskIntoConstraints = false
        statusField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        statusField.placeholder = "Enter status"
        statusField.textColor = .black
        statusField.backgroundColor = .white
        statusField.textAlignment = .natural
        statusField.layer.cornerRadius = 12
        statusField.layer.borderWidth = 1
        statusField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        statusField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: statusField.frame.height))
        statusField.leftViewMode = .always
        statusField.addTarget(self, action: #selector(statusChange), for: .editingChanged)
        self.addSubview(statusField)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        NSLayoutConstraint.activate([self.leftAnchor.constraint(equalTo: superview!.leftAnchor),
                                     self.rightAnchor.constraint(equalTo: superview!.rightAnchor),
                                     self.topAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.topAnchor),
                                     self.heightAnchor.constraint(equalToConstant: 220),
                                     
                                     photo.widthAnchor.constraint(equalToConstant: 100),
                                     photo.heightAnchor.constraint(equalTo: photo.widthAnchor),
                                     photo.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
                                     photo.topAnchor.constraint(equalTo: self.topAnchor, constant: 16),
                            
                                     name.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 20),
                                     name.topAnchor.constraint(equalTo: self.topAnchor, constant: 27),
                                     name.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant: -16),
                                     
                                     status.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 20),
                                     status.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant: -16),
                                     status.bottomAnchor.constraint(equalTo: statusField.topAnchor, constant: -6),
                                     
                                     button.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
                                     button.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant:  -16),
                                     button.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 16),
                                     button.heightAnchor.constraint(equalToConstant: 50),
                                     
                                     statusField.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 20),
                                     statusField.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -10),
                                     statusField.rightAnchor.constraint(greaterThanOrEqualTo: self.rightAnchor, constant: -16),
                                     statusField.heightAnchor.constraint(equalToConstant: 40)
                                    ])
    }
    
    @objc func pressButton() {
        status.text = statusText
        statusText = ""
        statusField.text = ""
        statusField.resignFirstResponder()
    }
    
    @objc func statusChange(_ textField: UITextField) {
        if let text = textField.text {
            statusText = text
        }
    }
}
