import UIKit

class Issue16ViewController: BaseViewController {
        
    @IBOutlet weak var tableview: UITableView!
    var viewmodel = Issue16ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - config
    override func setupUI() {
        super.setupUI()
        //title
        self.title = "Home"
        
        //tableview
        tableview.delegate = self
        tableview.dataSource = self
        
        let nib = UINib(nibName: "Issue16TableViewCell", bundle: .main)
        tableview.register(nib, forCellReuseIdentifier: "cell16")
        
        //navi
        let resetTabbarItem = UIBarButtonItem(image: UIImage(named: "ic-navi-refresh"), style: .plain, target: self, action: #selector(loadAPI))
        self.navigationItem.rightBarButtonItem = resetTabbarItem
    }
    
    override func setupData() {
    }
    
    func updateUI() {
        tableview.reloadData()
    }

    //MARK: - API
    @objc func loadAPI() {
        print("LOAD API")
        viewmodel.loadAPI() { (done,msg) in
            if done {
                self.updateUI( )
                }
            else {
                print("APIERROR: \(msg)")
                }
            }
        }
    }

//MARK: - Tableview Delegate & Datasource
extension Issue16ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewmodel.names.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell16", for: indexPath) as! Issue16TableViewCell
        
        return cell
    }
}
