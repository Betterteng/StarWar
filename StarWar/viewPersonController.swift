//
//  viewPersonController.swift
//  StarWar
//
//  Created by 滕施男 on 14/04/2016.
//  Copyright © 2016 TENG. All rights reserved.
//

import UIKit

class viewPersonController: UIViewController {
    
    var currentPerson: Person?

    @IBOutlet var info1: UILabel!
    @IBOutlet var info2: UILabel!
    @IBOutlet var info3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        var firstName: String?
        var surname: String?
        var planet: String?
        
        //Generate FIRSTNAME string.
        //Contains first three characters of the provided first name
        //and first two characters (lowercased) from the surname.
        let textF1 = ((self.currentPerson?.fName)! as NSString).substringToIndex(3)
        let textF2 = ((self.currentPerson?.sName)! as NSString).substringToIndex(2).lowercaseString
        firstName = textF1 + textF2
        
        //Generate SURNAME string
        //Contains  first two characters from the provided maiden name
        //and first three characters (lowercased) from the provided birthplace.
        let textS1 = ((self.currentPerson?.mmName)! as NSString).substringToIndex(2)
        let textS2 = ((self.currentPerson?.birthplace)! as NSString).substringToIndex(3).lowercaseString
        surname = textS1 + textS2
        
        //Generate PLANET string
        //Contains last two characters of the provided surname
        //and the provided favourite brand (lowercased).
        let textP1 = (self.currentPerson?.sName)!.substringFromIndex((self.currentPerson?.sName)!.endIndex.advancedBy(-2))
        let textP2 = (self.currentPerson?.fBrand)!.lowercaseString
        planet = textP1 + textP2
        
        //Change the text of labels
        self.info1.text = firstName
        self.info2.text = surname
        self.info3.text = planet

    }
}
