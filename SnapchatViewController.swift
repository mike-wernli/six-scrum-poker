//
//  SnapchatViewController.swift
//  six-scrum-poker
//
//  Created by codecamp on 10.06.16.
//  Copyright © 2016 six.codecamp16. All rights reserved.
//

import UIKit
import SceneKit

class SnapchatViewController: UIViewController {


    @IBOutlet weak var scrollViewSnapchat: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        
        let vcQuestion = SnapchatViewControllerQuestion(nibName: "SnapchatViewControllerQuestion", bundle: nil)
        self.addChildViewController(vcQuestion)
        self.scrollViewSnapchat.addSubview(vcQuestion.view)
        vcQuestion.didMoveToParentViewController(self)

        let vcCoffee = SnapchatViewControllerCoffee(nibName: "SnapchatViewControllerCoffee", bundle: nil)
        var frameCoffee = vcCoffee.view.frame
        frameCoffee.origin.x = self.view.frame.size.width
        vcCoffee.view.frame = frameCoffee
        self.addChildViewController(vcCoffee)
        self.scrollViewSnapchat.addSubview(vcCoffee.view)
        vcCoffee.didMoveToParentViewController(self)
        NSLog("Swipped to Card Coffee")
        
        let vc0 = SnapchatViewController0(nibName: "SnapchatViewController0", bundle: nil)
        var frame0 = vc0.view.frame
        frame0.origin.x = self.view.frame.size.width  * 2
        vc0.view.frame = frame0
        self.addChildViewController(vc0)
        self.scrollViewSnapchat.addSubview(vc0.view)
        vc0.didMoveToParentViewController(self)
        NSLog("Swipped to Card 0")

        let vcHalf = SnapchatViewControllerHalf(nibName: "SnapchatViewControllerHalf", bundle: nil)
        var frameHalf = vcHalf.view.frame
        frameHalf.origin.x = self.view.frame.size.width  * 3
        vcHalf.view.frame = frameHalf
        self.addChildViewController(vcHalf)
        self.scrollViewSnapchat.addSubview(vcHalf.view)
        vcHalf.didMoveToParentViewController(self)
        NSLog("Swipped to Card Half")
        
        let vc1 = SnapchatViewController1(nibName: "SnapchatViewController1", bundle: nil)
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width  * 4
        vc1.view.frame = frame1
        self.addChildViewController(vc1)
        self.scrollViewSnapchat.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        NSLog("Swipped to Card 1")
        
        let vc2 = SnapchatViewController2(nibName: "SnapchatViewController2", bundle: nil)
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width * 5
        vc2.view.frame = frame2
        self.addChildViewController(vc2)
        self.scrollViewSnapchat.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        NSLog("Swipped to Card 2")
        
        let vc3 = SnapchatViewController3(nibName: "SnapchatViewController3", bundle: nil)
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 6
        vc3.view.frame = frame3
        self.addChildViewController(vc3)
        self.scrollViewSnapchat.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        NSLog("Swipped to Card 3")

        let vc5 = SnapchatViewController5(nibName: "SnapchatViewController5", bundle: nil)
        var frame5 = vc5.view.frame
        frame5.origin.x = self.view.frame.size.width * 7
        vc5.view.frame = frame5
        self.addChildViewController(vc5)
        self.scrollViewSnapchat.addSubview(vc5.view)
        vc5.didMoveToParentViewController(self)
        NSLog("Swipped to Card 5")

        let vc8 = SnapchatViewController8(nibName: "SnapchatViewController8", bundle: nil)
        var frame8 = vc8.view.frame
        frame8.origin.x = self.view.frame.size.width * 8
        vc8.view.frame = frame8
        self.addChildViewController(vc8)
        self.scrollViewSnapchat.addSubview(vc8.view)
        vc8.didMoveToParentViewController(self)
        NSLog("Swipped to Card 8")

        let vc13 = SnapchatViewController13(nibName: "SnapchatViewController13", bundle: nil)
        var frame13 = vc13.view.frame
        frame13.origin.x = self.view.frame.size.width * 9
        vc13.view.frame = frame13
        self.addChildViewController(vc13)
        self.scrollViewSnapchat.addSubview(vc13.view)
        vc13.didMoveToParentViewController(self)
        NSLog("Swipped to Card 13")
        
        let vc20 = SnapchatViewController20(nibName: "SnapchatViewController20", bundle: nil)
        var frame20 = vc20.view.frame
        frame20.origin.x = self.view.frame.size.width * 10
        vc20.view.frame = frame20
        self.addChildViewController(vc20)
        self.scrollViewSnapchat.addSubview(vc20.view)
        vc20.didMoveToParentViewController(self)
        NSLog("Swipped to Card 20")
        
        let vc40 = SnapchatViewController40(nibName: "SnapchatViewController40", bundle: nil)
        var frame40 = vc40.view.frame
        frame40.origin.x = self.view.frame.size.width * 11
        vc40.view.frame = frame40
        self.addChildViewController(vc40)
        self.scrollViewSnapchat.addSubview(vc40.view)
        vc40.didMoveToParentViewController(self)
        NSLog("Swipped to Card 40")

        let vc100 = SnapchatViewController100(nibName: "SnapchatViewController100", bundle: nil)
        var frame100 = vc100.view.frame
        frame100.origin.x = self.view.frame.size.width * 12
        vc100.view.frame = frame100
        self.addChildViewController(vc100)
        self.scrollViewSnapchat.addSubview(vc100.view)
        vc100.didMoveToParentViewController(self)
        NSLog("Swipped to Card 100")
        
        let vcInfinity = SnapchatViewControllerInfinity(nibName: "SnapchatViewControllerInfinity", bundle: nil)
        var frameInfinity = vcInfinity.view.frame
        frameInfinity.origin.x = self.view.frame.size.width * 13
        vcInfinity.view.frame = frameInfinity
        self.addChildViewController(vcInfinity)
        self.scrollViewSnapchat.addSubview(vcInfinity.view)
        vcInfinity.didMoveToParentViewController(self)
        NSLog("Swipped to Card Infinity")
        
        self.scrollViewSnapchat.contentSize = CGSizeMake(self.view.frame.size.width * 14,
        self.view.frame.size.height - 66)
        
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
