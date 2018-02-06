//
//  Pokemon.swift
//  PrettyGoodPokedex
//
//  Created by CLICC User on 2/6/18.
//  Copyright © 2018 ACM Hack. All rights reserved.
//

import Foundation

class Pokemon {
    var name : String
    var type : String
    var weight : String
    var img_url: URL
    
    init(name:String, type: String, weight: String, img_url: String) {
        self.name = name
        self.type = type
        self.weight = weight
        self.img_url = URL(string: img_url)!
    }
    
}
