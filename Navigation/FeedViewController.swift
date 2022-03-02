//
//  FeedViewController.swift
//  Navigation
//
//  Created by MacBook on 14.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    let post = Post(title: "First post")
    let postVC: PostViewController
    
    init() {
        postVC = PostViewController()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.addChild(postVC)
        
        let button = UIButton(frame: CGRect(x: UIScreen.main.bounds.width/2-50, y: UIScreen.main.bounds.height/2-25, width: 100, height: 50))
        button.backgroundColor = UIColor.red
        button.setTitle("press", for: .normal)

        button.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func showPost() {
        
        postVC.post = post
        self.navigationController?.pushViewController(postVC, animated: true)
        postVC.title = post.title
    }


}
