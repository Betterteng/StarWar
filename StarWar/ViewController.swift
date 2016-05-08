//
//  ViewController.swift
//  StarWar
//
//  Created by 滕施男 on 14/04/2016.
//  Copyright © 2016 TENG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var fNameT: UITextField!
    @IBOutlet var sNameT: UITextField!
    @IBOutlet var mmNameT: UITextField!
    @IBOutlet var birthplaceT: UITextField!
    @IBOutlet var favouriteBrandT: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Looks for single or multiple taps.(Hide keyboard via tapping gesture.)
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //Hide the keyboard
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //Judge if we choose the correct segue.
        if (segue.identifier == "createPersonSegue") {
            let fName = fNameT.text!
            let sName = sNameT.text!
            let mmName = mmNameT.text!
            let birthplace = birthplaceT.text!
            let favouriteBrand = favouriteBrandT.text!
            
            //Create a Person object and pass it to the next view via segue.
            let per: Person = Person(fName: fName, sName: sName, mmName: mmName, birthplace: birthplace, fBrand: favouriteBrand)
            if let destinationVC = segue.destinationViewController as? viewPersonController {
                destinationVC.currentPerson = per
            }
        }
    }
}
