//
//  InfoViewController.swift
//  
//
//  Created by MacBook on 13.02.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.orange
        
        let buttonInfo = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2-50, y: UIScreen.main.bounds.height/2-25, width: 100, height: 50))
        buttonInfo.setTitle("press me", for: .normal)
        buttonInfo.addTarget(self, action: #selector(press), for: .touchUpInside)
        view.addSubview(buttonInfo)
        
    }
    
    @objc func press() {
        let alertVC = UIAlertController(title: "Вы булочка?", message: " ", preferredStyle: .alert)
        
        let firstAction = UIAlertAction(title: "Да", style: .destructive) { _ in
            print("Булочка с корицей")
        }
        let secondAction = UIAlertAction(title: "", style: .default) { _ in
            print("Сам такой")
        }
        
        alertVC.addAction(firstAction)
        alertVC.addAction(secondAction)
        self.present(alertVC, animated: true, completion: nil)
    }

}
