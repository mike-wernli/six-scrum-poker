//
//  DrawingViewController.swift
//  six-scrum-poker
//
//  Created by codecamp on 10.06.16.
//  Copyright © 2016 six.codecamp16. All rights reserved.
//

import UIKit

class DrawingViewController: UIViewController {

    @IBOutlet weak var drawImageView: UIImageView!
    
    
    var start: CGPoint?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //drawImageView.image = UIImage(contentsOfFile: "notizblock-bg.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonClearPressed(sender: AnyObject) {
        drawImageView.image = nil
        drawImageView.image = UIImage(contentsOfFile: "notizblock-bg.png")
        NSLog("You piece of 💩 reset that damn image!!!!!")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first as UITouch!
        start = touch.locationInView(self.drawImageView)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first as UITouch!
        let end = touch.locationInView(self.drawImageView)
        if let s = self.start {
            draw(s, end: end)
        }
        self.start = end
    }
    
    func draw(start: CGPoint, end: CGPoint) {
        UIGraphicsBeginImageContext(self.drawImageView.frame.size)
        
        let context = UIGraphicsGetCurrentContext()
        
        drawImageView?.image?.drawInRect(CGRect(x: 0, y: 0, width: drawImageView.frame.width, height: drawImageView.frame.height))
        
        //CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 1, 1, 5, 1)
        CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 0, 0, 0, 1)
        CGContextSetLineCap(UIGraphicsGetCurrentContext(), CGLineCap.Round);
        CGContextSetLineWidth(UIGraphicsGetCurrentContext(),50.0);
        CGContextSetLineWidth(context, 16)
        CGContextBeginPath(context)
        CGContextMoveToPoint(context, start.x, start.y)
        CGContextAddLineToPoint(context, end.x, end.y)
        CGContextStrokePath(context)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        drawImageView.image = newImage
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
