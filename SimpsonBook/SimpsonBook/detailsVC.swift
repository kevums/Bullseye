//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Kevin Landry on 6/24/20.
//  Copyright © 2020 Kevin Landry. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpsonName = ""
    var selectedSimpsonImage = UIImage()
    var selectedSimpsonJob = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Do any additional setup after loading the view.
        nameLabel.text = selectedSimpsonName
        imageView.image = selectedSimpsonImage
        jobLabel.text = selectedSimpsonJob
    }
    

   
}
