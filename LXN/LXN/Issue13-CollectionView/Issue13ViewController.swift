//
//  Issue13ViewController.swift
//  LXN
//
//  Created by Macbook on 12/8/26.
//

import UIKit

class Issue13ViewController: UIViewController {
    var users : [User13] = User13.getDummyDatas()
    @IBOutlet weak var Bang: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CollectionViewCell", bundle: .main)
        Bang.register(nib, forCellWithReuseIdentifier: "cell")
        
        Bang.dataSource = self
        Bang.delegate = self
        
        let screenWidth = UIScreen.main.bounds.width - 10
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: (screenWidth-10)/3 , height: (screenWidth/3)*5/4)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        Bang.collectionViewLayout = layout
        
        
        

        // Do any additional setup after loading the view.
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
extension Issue13ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        users.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        return cell
    }
}
