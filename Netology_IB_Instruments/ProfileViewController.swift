//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by MacBook on 05.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let proo = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            proo.frame = CGRect(x: 1, y: 100, width: view.bounds.width - 30, height: 384)
            view.addSubview(proo)
        }
    }

}
