//
//  ViewController.swift
//  collectionViewDemo
//
//  Created by Khushbu on 01/07/25.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    
    var arrimg = [#imageLiteral(resourceName: "watch10"), #imageLiteral(resourceName: "watch7"), #imageLiteral(resourceName: "watch8"), #imageLiteral(resourceName: "watch9"), #imageLiteral(resourceName: "watch8"), #imageLiteral(resourceName: "watch7"), #imageLiteral(resourceName: "watch6"), #imageLiteral(resourceName: "watch9"), #imageLiteral(resourceName: "watch4"), #imageLiteral(resourceName: "watch7"), #imageLiteral(resourceName: "watch8"), #imageLiteral(resourceName: "watch10"), #imageLiteral(resourceName: "watch7"), #imageLiteral(resourceName: "watch3"), #imageLiteral(resourceName: "watch6"), #imageLiteral(resourceName: "watch9"), #imageLiteral(resourceName: "watch10"), #imageLiteral(resourceName: "watch7"), #imageLiteral(resourceName: "watch3") , #imageLiteral(resourceName: "watch6") ]
    var arrlbl = ["Watch1","Watch2","Watch3","Watch4","Watch5","Watch6","Watch7","Watch8","Watch9","Watch10","Watch11","Watch12","Watch13","Watch14","Watch15","Watch16","Watch17","Watch18","Watch19","Watch20"]
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = arrimg[indexPath.row]
        cell.lbl.text = arrlbl[indexPath.row]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imagedetail:ImageViewController = self.storyboard?.instantiateViewController(identifier: "ImageViewController") as! ImageViewController
        
        imagedetail.mainimg = arrimg[indexPath.row]
        imagedetail.mainlbl = arrlbl[indexPath.row]
        
        self.navigationController?.pushViewController(imagedetail, animated: true)
    }
    
    
}

