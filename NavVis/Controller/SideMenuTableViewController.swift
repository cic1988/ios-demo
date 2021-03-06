//
//  SideMenuTableViewController.swift
//  NavVis
//

import UIKit

class SideMenuTableViewController: UITableViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var certImageView: UIImageView!
    @IBOutlet weak var certLabel: UILabel!
    @IBOutlet weak var creditLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: Table view related
extension SideMenuTableViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
