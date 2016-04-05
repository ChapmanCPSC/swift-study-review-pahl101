//
//  secondViewController.swift
//  assign3StudyGame
//
//  Created by Madison Pahl on 3/29/16.
//  Copyright © 2016 Madison Pahl. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    
    
    var terms = [
    "Let vs. Var",
    "Computed Initilizer",
    "Computed Variables",
    "Setter Ovservers",
    "Functions",
    "External Parameters",
    "Default Parameters",
    "Anonymous Functions",
    "Optional Chaining",
    "Failable Initializers",
    "Casting",
    "Class Methods",
    "Extensions",
    "Enumeration",
    "Error Handling",
    "Dictionaries",
    "Conditional Binding",
    "Protocols",
    "Inheritance",
    "Structs",
    "Enums",
    "Classes",
    "Subscripts",
    "Setter Observers"
    ]
    
    var idx : Int = 0
    
    @IBOutlet weak var termLabel: UILabel!
    override func viewDidLoad() {
        terms.shuffle()
        termLabel.text = terms[idx]
        idx+=1
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextButton(sender: UIButton) {
        if (idx == terms.count) {
            idx = 0
            termLabel.text = terms[idx]
            idx+=1
        }
        else {
            termLabel.text = terms[idx]
            idx+=1
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
