//
//  Simpz.swift
//  SimpsonBook
//
//  Created by Kevin Landry on 6/28/20.
//  Copyright © 2020 Kevin Landry. All rights reserved.
//

import Foundation
//have to add uikit to be able to call UIImages
import UIKit

class Simpson{
    
    var name : String
    var job : String
    var image : UIImage
    
    init(simpsonName: String, simpsonJob:String, simpsonImage:UIImage) {
        
        name = simpsonName
        job = simpsonJob
        image = simpsonImage
    
    }
}
