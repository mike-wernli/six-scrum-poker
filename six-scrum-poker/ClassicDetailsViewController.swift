//
//  ClassicDetailsViewController.swift
//  six-scrum-poker
//
//  Created by codecamp on 10.06.16.
//  Copyright © 2016 six.codecamp16. All rights reserved.
//

import UIKit

class ClassicDetailsViewController: UIViewController {
    
    var labelCardText: String = "defaultValue"
    
    @IBOutlet weak var labelPokerCard: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelPokerCard.text = labelCardText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
