//
//  SnapchatViewController.swift
//  six-scrum-poker
//
//  Created by codecamp on 10.06.16.
//  Copyright © 2016 six.codecamp16. All rights reserved.
//

import UIKit

class SnapchatViewController: UIViewController {


    @IBOutlet weak var scrollViewSnapchat: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let vc0 = SnapchatViewController0(nibName: "SnapchatViewController0", bundle: nil)
        self.addChildViewController(vc0)
        self.scrollViewSnapchat.addSubview(vc0.view)
        vc0.didMoveToParentViewController(self)
        
        
        
        let vc1 = SnapchatViewController1(nibName: "SnapchatViewController1", bundle: nil)
        var frame1 = vc1.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc1.view.frame = frame1
        self.addChildViewController(vc1)
        self.scrollViewSnapchat.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)

        
        let vc2 = SnapchatViewController2(nibName: "SnapchatViewController2", bundle: nil)
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        vc2.view.frame = frame2
        self.addChildViewController(vc2)
        self.scrollViewSnapchat.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)

        
        let vc3 = SnapchatViewController3(nibName: "SnapchatViewController3", bundle: nil)
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 3
        vc3.view.frame = frame3
        self.addChildViewController(vc3)
        self.scrollViewSnapchat.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        
        self.scrollViewSnapchat.contentSize = CGSizeMake(self.view.frame.size.width * 4,
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
