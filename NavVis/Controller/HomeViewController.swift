//
//  HomeViewController.swift
//  OFOBike
//
//  Created by kingcos on 11/08/2017.
//  Copyright © 2017 kingcos. All rights reserved.
//

import UIKit
import SWRevealViewController
import FTIndicator
//import NavvisSdk

class HomeViewController: UIViewController {
    
    @IBOutlet weak var panelView: UIView!
    
    // Map related
    //var mapView: NavvisMapView!
    //var navvisMap: NavvisMap?
    
    //var poiSearchResult: [PoiSearchResult] = []
    //var site: NavvisSite?

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

// MARK: Setup
extension HomeViewController {
    fileprivate func setup() {
        setupNavigationItems()
        setupMapView()
        setupPanelView()
    }
    
    // MARK: View
    private func setupNavigationItems() {
        // navigation bar middle
        navigationItem.titleView = UIImageView(image: UIImage(named: "navvisLogo"))
        
        // navigation bar left & right
        let leftImage = UIImage(named: "leftTopImage")?.withRenderingMode(.alwaysOriginal)
        let rightImage = UIImage(named: "rightTopImage")?.withRenderingMode(.alwaysOriginal)
        
        navigationItem.leftBarButtonItem?.image = leftImage
        navigationItem.rightBarButtonItem?.image = rightImage
        
        // 全局导航后退
        let backImage = UIImage(named: "backIndicator")?.withRenderingMode(.alwaysOriginal)
        
        navigationController?.navigationBar.backIndicatorImage = backImage
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = backImage
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        // 侧边栏
        if let revealVC = revealViewController() {
            revealVC.rearViewRevealWidth = 340.0
            navigationItem.leftBarButtonItem?.target = revealVC
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }

    private func setupMapView() {
        /*mapView = NavvisMapView(frame: view.bounds)
        
        mapView.loadMap(url: "https://www.navvis.com/iv.nav-demo/") { [weak self] (result) in

            // ? why here we need strong reference...
            guard let strongSelf = self else { return }
            switch result {
            case .failure(let reason):
                print("Couldn't load NavvisMap, reason: \(reason)")
            case .success(let navvisMap):
                strongSelf.navvisMap = navvisMap
            }
        }
        view.addSubview(mapView)*/
    }
    
    private func setupPanelView() {
        view.bringSubview(toFront: panelView)
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        print("heyheyhes")
    }
}
