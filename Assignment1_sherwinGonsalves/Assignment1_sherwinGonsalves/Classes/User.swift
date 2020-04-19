//
//  User.swift
//  Assignment1_sherwinGonsalves
//
//  Created by Sherwin on 2020-03-25.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class User: NSObject {
    
    
    var email : String = ""
    var name: String = ""
    var course: String = ""
    var id : Int?
    var image :String = ""
    
  

    init(row : Int, name : String,email : String,course:String,image:String) {
        self.email = email
        self.name = name
        self.course = course
        self.id = row
        self.image = image
    }

}
