//
//  MainViewController.swift
//  LXN
//
//  Created by LXN on 5/7/26.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private var items: [String] = [
        "Issue 1",
        "Issue 3 - Custom View",
        "Issue 9 - Navigation ViewController",
        "Issue 10 - MVC",
        "Issue 11 - Table View",
        "Issue 12 - Custom Cell",
        "Issue 13 - Collection View",
        "Issue 14 - Tabbar Controller",
        "Issue 15 - MVVM - Login",
        "Issue 16 - Network Connect"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTableView()
    }
    
    static func instantiate() -> MainViewController {
        return MainViewController(nibName: "MainViewController", bundle: nil)
    }
}

// MARK: - Setup
extension MainViewController {
    private func setupUI() {
        title = "Main"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
}
// MARK: - Tabbar Create
func CreateTabBarController() -> UITabBarController {
    let homeVC = HomeViewController(nibName: "HomeViewController", bundle: nil)
    let homeNav = UINavigationController(rootViewController: homeVC)
    homeNav.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
    let profileVC = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
    let profileNav = UINavigationController(rootViewController: profileVC)
    profileNav.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 0)
    let messagesVC = MessagesViewController(nibName: "MessagesViewController", bundle: nil)
    let messagesNav = UINavigationController(rootViewController: messagesVC)
    messagesNav.tabBarItem = UITabBarItem(title: "Messages", image: UIImage(systemName: "text.bubble.fill"), tag: 0)
    let friendsVC = FriendsViewController(nibName: "FriendsViewController", bundle: nil)
    let friendsNav = UINavigationController(rootViewController: friendsVC)
    friendsNav.tabBarItem = UITabBarItem(title: "Friends", image: UIImage(named:"profile"), selectedImage: UIImage(named: "profile-selected"))
    friendsNav.tabBarItem.badgeValue = "phuk"
    friendsNav.tabBarItem.badgeColor = .systemRed
    let tabBarController = UITabBarController()
    tabBarController.viewControllers = [homeNav, profileNav, messagesNav, friendsNav]
    if #available(iOS 26.0, *) {
        tabBarController.tabBarMinimizeBehavior = .never
    }
    return tabBarController

}
// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}


// MARK: - UITableViewDelegate
extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            let vc = Issue1ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = Issue3ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = Issue9ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = Issue10ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = Issue11ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = Issue12ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = Issue13ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case 7:
            self.navigationController?.pushViewController(CreateTabBarController(), animated: true)
        case 8:
            let vc = LoginViewController()
            let loginNav = UINavigationController(rootViewController: vc)
            self.view.window?.rootViewController = loginNav
        case 9:
            let vc = Issue16ViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            debugPrint("Did tap: \(items[indexPath.row])")
        }
    }
}
