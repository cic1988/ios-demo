//
//  AboutUsViewController.swift
//  NavVis
//
//  Created by Yuan Gao on 08/01/2018.
//  Copyright © 2018 Yuan Gao. All rights reserved.
//

import UIKit
import SWRevealViewController

class AboutUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

}

// MARK: UI related
extension AboutUsViewController {
    fileprivate func setupUI() {
        if let revealVC = revealViewController() {
            revealVC.rearViewRevealWidth = 340.0
            navigationItem.leftBarButtonItem?.target = revealVC
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }
}
