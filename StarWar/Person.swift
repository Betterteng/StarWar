//
//  Person.swift
//  StarWar
//
//  Created by 滕施男 on 14/04/2016.
//  Copyright © 2016 TENG. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var fName: String?
    var sName: String?
    var mmName: String?
    var birthplace: String?
    var fBrand: String?
    
    override init() {
        fName = "Unknown"
        sName = "Unknown"
        mmName = "Unknown"
        birthplace = "Unknown"
        fBrand = "Unknown"
    }
    
    //Constructor
    init(fName: String, sName: String, mmName: String, birthplace: String, fBrand: String) {
        self.fName = fName
        self.sName = sName
        self.mmName = mmName
        self.birthplace = birthplace
        self.fBrand = fBrand
    }
}
