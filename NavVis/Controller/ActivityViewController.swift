//
//  ActivityViewController.swift
//  NavVis
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }

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
