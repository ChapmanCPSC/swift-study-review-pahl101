//
//  ThirdViewController.swift
//  assign3StudyGame
//
//  Created by Madison Pahl on 3/29/16.
//  Copyright © 2016 Madison Pahl. All rights reserved.
//

import UIKit
extension Array
{
    mutating func shuffle()
    {
        for _ in 0..<(count - 1)
        {
            sortInPlace { (_,_) in arc4random() < arc4random() }
        }
    }
}
class ThirdViewController: UIViewController {
    var timer = NSTimer()
    var time = 31
   
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
    var score : Int = 0
    
   

    @IBOutlet weak var termLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        terms.shuffle()
 

        termLabel.text = terms[idx]
        idx+=1
        super.viewDidLoad()
        timeLabel.text = "00:\(time)"
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector (ThirdViewController.self.countDownTimer) , userInfo: nil, repeats: true)
        timer.fire()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func countDownTimer()
    {
        self.time-=1
        timeLabel.text = "00:\(time)"
        if time<1 {
            time = 30
            termLabel.text = terms[idx]
            idx+=1
        }
    }
    
    @IBAction func skipIt(sender: UIButton) {
        time=31
        if (idx >= terms.count)
        {
            timer.invalidate()
            scoreLabel.text = "Score: \(score)/24"
        }
        else {
            termLabel.text = terms[idx]
            idx+=1
        }
        
    }

    @IBAction func gotIt(sender: UIButton) {
        time=31
        if (idx >= terms.count)
        {
            timer.invalidate()
            if (idx == 24) {
                score += 1
                idx += 1
            }
            else {
                score == score
            }
            scoreLabel.text = "Score: \(score)/24"
            
            
        }
        else {
            termLabel.text = terms[idx]
            idx+=1
            score+=1
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
