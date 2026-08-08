//
//  Issue11ViewController.swift
//  LXN
//
//  Created by Macbook on 8/8/26.
//

import UIKit

class Issue11ViewController: UIViewController {
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
    var titles: [String] = ["Issue 11", "Issue 12"]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Issue11 - tableview"
        Bang.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        Bang.delegate = self
        Bang.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Bang: UITableView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension Issue11ViewController: UITableViewDataSource, UITableViewDelegate {
        func numberOfSections(in tableView: UITableView) -> Int {
            return names.count
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names[section].count
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = names[indexPath.section][indexPath.row]
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
