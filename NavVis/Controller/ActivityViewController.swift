//
//  ActivityViewController.swift
//  NavVis
//
//  Created by Yuan Gao on 08/01/2018.
//  Copyright © 2018 Yuan Gao. All rights reserved.
//

import UIKit
import WebKit

class ActivityViewController: UIViewController, UIGestureRecognizerDelegate {

    let activityURLString = "http://www.navvis.com/blog"
    
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

}

// MARK: UI related
extension ActivityViewController {
    fileprivate func setupUI() {
        title = "NavVis Homepage"

        addWebView()
    }

    private func addWebView() {
        guard let url = URL(string: activityURLString) else { return }
        let request = URLRequest(url: url)

        webView = WKWebView(frame: view.frame)
        webView.load(request)
        webView.allowsBackForwardNavigationGestures = true
        
        view.addSubview(webView)
    }
}
