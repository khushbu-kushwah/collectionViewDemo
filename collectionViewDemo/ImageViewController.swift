//
//  ImageViewController.swift
//  collectionViewDemo
//
//  Created by Khushbu on 01/07/25.
//

import UIKit

class ImageViewController: UIViewController {
    
    
    @IBOutlet var iimg: UIImageView!
    
    @IBOutlet var ilbl: UILabel!
    
    var mainimg:UIImage!
    var mainlbl:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iimg.image = mainimg
        ilbl.text = mainlbl

        // Do any additional setup after loading the view.
    }
    

  

}
