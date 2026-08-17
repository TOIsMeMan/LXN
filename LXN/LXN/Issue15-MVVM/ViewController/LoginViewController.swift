//
//  LoginViewController.swift
//  LXN
//
//  Created by Macbook on 16/8/26.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet weak var pwTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    var viewModel = LoginViewModel(email:"1",password: "2")
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // Do any additional setup after loading the view.
    }
    override func setupUI() {
        super.setupUI()
        self.title = "登录"
        updateView()
    }
    override func setupData() {
        
    }
    func updateView() {
        self.usernameTxt.text = viewModel.email
        self.pwTxt.text = viewModel.password
        
    }
    func createTabBarController() -> UITabBarController {
        
        let homeVC = HomeViewController(
            nibName: "HomeViewController",
            bundle: nil
        )
        let homeNav = UINavigationController(rootViewController: homeVC)
        homeNav.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            tag: 0
        )
        
        let profileVC = ProfileViewController(
            nibName: "ProfileViewController",
            bundle: nil
        )
        let profileNav = UINavigationController(rootViewController: profileVC)
        profileNav.tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person"),
            tag: 1
        )
        
        let messagesVC = MessagesViewController(
            nibName: "MessagesViewController",
            bundle: nil
        )
        let messagesNav = UINavigationController(rootViewController: messagesVC)
        messagesNav.tabBarItem = UITabBarItem(
            title: "Messages",
            image: UIImage(systemName: "text.bubble.fill"),
            tag: 2
        )
        
        let friendsVC = FriendsViewController(
            nibName: "FriendsViewController",
            bundle: nil
        )
        let friendsNav = UINavigationController(rootViewController: friendsVC)
        friendsNav.tabBarItem = UITabBarItem(
            title: "Friends",
            image: UIImage(named: "profile"),
            selectedImage: UIImage(named: "profile-selected")
        )
        
        let tabBarController = UITabBarController()
        
        tabBarController.viewControllers = [
            homeNav,
            profileNav,
            messagesNav,
            friendsNav
        ]
        
        return tabBarController
    }
    @IBAction func loginBtnTapped(_ sender: Any) {
        let email = usernameTxt.text ?? ""
        let pw = pwTxt.text ?? ""
        
        let complete: LoginViewModel.LoginCompletion = { (result) in
            switch result {
            case .success:
                let tabBar = self.createTabBarController()
                self.view.window?.rootViewController = tabBar
            case .failure(let isError,let error):
                print(isError)
                print(error)
            }
           
        }
        self.viewModel.login(
               email: email,
               password: pw,
               completion: complete
           )
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
