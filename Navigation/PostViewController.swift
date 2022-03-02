//
//  PostViewController.swift
//  Navigation
//
//  Created by MacBook on 14.02.2022.
//

import UIKit

struct Post {
    var title: String
}


class PostViewController: UIViewController {

    var post: Post?
    let infoVC: InfoViewController
    
    init() {
        infoVC =  InfoViewController()
        super.init(nibName: nil, bundle: nil)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .systemPink
        

        let play = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(addTapped))
        

        navigationItem.rightBarButtonItems = [play]
    }
    
    @objc func addTapped() {
        let vc = InfoViewController()
        self.present(vc, animated: true, completion: nil)
    }

}
