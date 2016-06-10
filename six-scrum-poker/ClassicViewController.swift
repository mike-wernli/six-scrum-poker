//
//  ClassicViewController.swift
//  six-scrum-poker
//
//  Created by codecamp on 10.06.16.
//  Copyright © 2016 six.codecamp16. All rights reserved.
//

import UIKit

class ClassicViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailView = segue.destinationViewController as! ClassicDetailsViewController
        NSLog("Segue is: " + segue.identifier!)
        
        
        if segue.identifier == "showCard0" {
            detailView.labelCardText = "0"
            detailView.view.backgroundColor = UIColor(red: 0, green: 165/255, blue: 0, alpha: 1)

        } else if segue.identifier == "showCardHalf"  {
            detailView.labelCardText = "½"
            detailView.view.backgroundColor = UIColor(red: 1, green: 165/255, blue: 1, alpha: 1)
            
        } else if segue.identifier == "showCard1"  {
            detailView.labelCardText = "1"
            detailView.view.backgroundColor = UIColor(red: 2, green: 165/255, blue: 2, alpha: 1)

        } else if segue.identifier == "showCard2"  {
            detailView.labelCardText = "2"
            detailView.view.backgroundColor = UIColor(red: 3, green: 165/255, blue: 3, alpha: 1)

        } else if segue.identifier == "showCard3"  {
            detailView.labelCardText = "3"
            detailView.view.backgroundColor = UIColor(red: 4, green: 165/255, blue: 4, alpha: 1)

        } else if segue.identifier == "showCard5"  {
            detailView.labelCardText = "5"
            detailView.view.backgroundColor = UIColor(red: 5, green: 165/255, blue: 5, alpha: 1)

        } else if segue.identifier == "showCard8"  {
            detailView.labelCardText = "8"
            detailView.view.backgroundColor = UIColor(red: 6, green: 165/255, blue: 6, alpha: 1)

        } else if segue.identifier == "showCard13"  {
            detailView.labelCardText = "13"
            detailView.view.backgroundColor = UIColor(red: 7, green: 165/255, blue: 7, alpha: 1)

        } else if segue.identifier == "showCard20"  {
            detailView.labelCardText = "20"
            detailView.view.backgroundColor = UIColor(red: 8, green: 165/255, blue: 8, alpha: 1)

        } else if segue.identifier == "showCard40"  {
            detailView.labelCardText = "40"
            detailView.view.backgroundColor = UIColor(red: 9, green: 165/255, blue: 9, alpha: 1)

        } else if segue.identifier == "showCard100"  {
            detailView.labelCardText = "100"
            detailView.view.backgroundColor = UIColor(red: 10, green: 165/255, blue: 10, alpha: 1)

        } else if segue.identifier == "showCardInfinity"  {
            detailView.labelCardText = "∞"
            detailView.view.backgroundColor = UIColor(red: 11, green: 165/255, blue: 11, alpha: 1)
            
        } else {
            detailView.labelCardText = "unknown"
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
