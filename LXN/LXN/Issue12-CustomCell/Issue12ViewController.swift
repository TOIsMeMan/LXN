//
//  Issue11ViewController.swift
//  LXN
//
//  Created by Macbook on 8/8/26.
//

import UIKit

class Issue12ViewController: UIViewController {
    var names : [[String]] = [["nam",
                            "nguyen",
                            "hoang",
                            "nguyen",
                            "tuan",
                            "nguyen",
                            "beo"],
                            ["vail",
                             "hihi"
                            ]]
    var titles: [String] = ["Issue 12", "Issue 12"]
    //
    var users: [User] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Issue12 - CustomCell"
        
      
        let nib = UINib(nibName: "HomeCell", bundle: .main)
        Bang.register(nib, forCellReuseIdentifier: "cell")
        Bang.delegate = self
        Bang.dataSource = self
        users = getUser()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Bang: UITableView!
    
    func getUser() -> [User] {
            //1
            var users = [User]()
            //2
            for i in 0...30 {
                //3
                let user = User(name: "Name \(i+1)", age: Int.random(in: 10...30), gender: Bool.random())
                //4
                users.append(user)
            }
            
            return users
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
extension Issue12ViewController: UITableViewDataSource, UITableViewDelegate {
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return users.count
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeCell
            var user = users[indexPath.row]
            cell.nameLbl.text = user.name
            cell.subtitleLbl.text = user.name
            
        return cell
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("Selected row")
            let vc = BruhView()
            vc.name = names[indexPath.section][indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
    }
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titles[section]
    }
    
}
