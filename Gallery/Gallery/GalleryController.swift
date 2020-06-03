//
//  ViewController.swift
//  Gallery
//
//  Created by CY on 2020/05/14.
//  Copyright © 2020 CY. All rights reserved.
//

import UIKit

var images = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"]



class GalleryController: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var Sub1: UIImageView!
    @IBOutlet weak var Sub2: UIImageView!
    @IBOutlet weak var Sub3: UIImageView!
    @IBOutlet weak var Sub4: UIImageView!
    @IBOutlet weak var Sub5: UIImageView!
    
    
    @IBAction func GoStory(_ sender: UIButton) {
        if let storycontroller = self.storyboard?.instantiateViewController(identifier: "StoryController") {
            self.navigationController?.pushViewController(storycontroller, animated: true)
        }
    }
    
    
    @IBAction func GoSearch(_ sender: UIButton) {
        if let searchcontroller = self.storyboard?.instantiateViewController(identifier: "SearchController") {
            self.navigationController?.pushViewController(searchcontroller, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Sub1.image = UIImage(named: images[0])
        Sub2.image = UIImage(named: images[1])
        Sub3.image = UIImage(named: images[2])
        Sub4.image = UIImage(named: images[3])
        Sub5.image = UIImage(named: images[4])
        
    }

    
}
