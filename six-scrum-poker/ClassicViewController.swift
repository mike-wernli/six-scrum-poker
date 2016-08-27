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
        
        
        if segue.identifier == "showCardQuestion" {
            detailView.labelCardText = "?"
            //detailView.view.backgroundColor = UIColor(red: 0, green: 165/255, blue: 0, alpha: 1)
            detailView.view.backgroundColor = UIColor.lightGrayColor()
            NSLog("Pressed for Card ?")

        } else if segue.identifier == "showCardCoffee"  {
            detailView.labelCardText = "☕️"
            detailView.view.backgroundColor = UIColor.lightGrayColor()
            NSLog("Pressed for Card coffee")

        } else if segue.identifier == "showCard0"  {
            detailView.labelCardText = "0"
            detailView.view.backgroundColor = UIColor.lightGrayColor()
            NSLog("Pressed for Card 0")
            
        } else if segue.identifier == "showCardHalf"  {
            detailView.labelCardText = "½"
            detailView.view.backgroundColor = UIColor.lightGrayColor()
            NSLog("Pressed for Card Half")
            
        } else if segue.identifier == "showCard1"  {
            detailView.labelCardText = "1"
            detailView.view.backgroundColor = UIColor.grayColor()
            NSLog("Pressed for Card 1")

        } else if segue.identifier == "showCard2"  {
            detailView.labelCardText = "2"
            detailView.view.backgroundColor = UIColor.lightGrayColor().colorWithAlphaComponent(0.75)
            NSLog("Pressed for Card 2")

        } else if segue.identifier == "showCard3"  {
            detailView.labelCardText = "3"
            detailView.view.backgroundColor = UIColor.greenColor().colorWithAlphaComponent(0.75)
            NSLog("Pressed for Card 3")

        } else if segue.identifier == "showCard5"  {
            detailView.labelCardText = "5"
            detailView.view.backgroundColor = UIColor.yellowColor().colorWithAlphaComponent(0.75)
            detailView.view.opaque = true
            NSLog("Pressed for Card 5")

        } else if segue.identifier == "showCard8"  {
            detailView.labelCardText = "8"
            detailView.view.backgroundColor = UIColor.orangeColor()
            detailView.labelPokerCard.textColor = UIColor.lightGrayColor()
            NSLog("Pressed for Card 8")

        } else if segue.identifier == "showCard13"  {
            detailView.labelCardText = "13"
            detailView.view.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.75)
            NSLog("Pressed for Card 13")

        } else if segue.identifier == "showCard20"  {
            detailView.labelCardText = "20"
            detailView.view.backgroundColor = UIColor.redColor().colorWithAlphaComponent(0.75)
            NSLog("Pressed for Card 20")

        } else if segue.identifier == "showCard40"  {
            detailView.labelCardText = "40"
            detailView.view.backgroundColor = UIColor.purpleColor().colorWithAlphaComponent(0.75)
            NSLog("Pressed for Card 40")

        } else if segue.identifier == "showCard100"  {
            detailView.labelCardText = "100"
            detailView.view.backgroundColor = UIColor.brownColor().colorWithAlphaComponent(0.75)
            detailView.labelPokerCard.hidden = true
            detailView.labelPokerCardSmall.hidden = false
            NSLog("Pressed for Card 100")

        } else if segue.identifier == "showCardInfinity"  {
            detailView.labelCardText = "∞"
            detailView.view.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.75)
            detailView.labelPokerCard.textColor = UIColor.whiteColor()
            NSLog("Pressed for Card Infinity")
            
        } else {
            detailView.labelCardText = "na"
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
