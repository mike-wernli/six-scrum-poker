//
//  ClassicDetailsViewController.swift
//  six-scrum-poker
//
//  Created by codecamp on 10.06.16.
//  Copyright © 2016 six.codecamp16. All rights reserved.
//

import UIKit
import SceneKit

class ClassicDetailsViewController: UIViewController {
    
    var labelCardText: String = "..."
    
    @IBOutlet weak var labelPokerCardSmall: UILabel!
    @IBOutlet weak var labelPokerCard: UILabel!
    
    @IBOutlet var particles: SCNView!
    
    //@IBOutlet weak var particles: SCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelPokerCard.text = labelCardText
        labelPokerCardSmall.text = labelCardText
        
        let modelName = UIDevice.currentDevice().modelName
        NSLog("detected modelname="+modelName)
        
        if modelName.containsString("Plus") {
            NSLog("Detected iPhone Plus Model: "+modelName)
            labelPokerCardSmall.hidden = true
            labelPokerCard.hidden = false
        } else {
            NSLog("Detected iPhone normal Model: "+modelName)
            labelPokerCard.hidden = true
            labelPokerCardSmall.hidden = false
        }
        
        let scnView = self.view as! SCNView
        scnView.scene = PrimitiveScene()
        scnView.backgroundColor = UIColor.blackColor()
        
        let scene = SCNScene()
        let particlesNode = SCNNode()
        
        
        if labelCardText == "0" {
            let particleSystem = SCNParticleSystem(named: "ConfettiSceneKitParticleSystem", inDirectory: "")
            particlesNode.addParticleSystem(particleSystem!)
            NSLog("Loaded particle system for: Confetti")

        } else if labelCardText == "1" {
            let particleSystem = SCNParticleSystem(named: "SpaceSceneKitParticelSystem", inDirectory: "")
            particlesNode.addParticleSystem(particleSystem!)
            NSLog("Loaded particle system for: Space")
            
        } else if labelCardText == "2" {
            let particleSystem = SCNParticleSystem(named: "FireSceneKitParticleSystem", inDirectory: "")
            particlesNode.addParticleSystem(particleSystem!)
            NSLog("Loaded particle system for: Fire")
            
        } else if labelCardText == "3" {
            let particleSystem = SCNParticleSystem(named: "RainSceneKitParticleSystem", inDirectory: "")
            particlesNode.addParticleSystem(particleSystem!)
            NSLog("Loaded particle system for: Rain")
            
        } else if labelCardText == "5" {
            let particleSystem = SCNParticleSystem(named: "SmokeSceneKitParticleSystem", inDirectory: "")
            particlesNode.addParticleSystem(particleSystem!)
            NSLog("Loaded particle system for: Smoke")
            
        } else if labelCardText == "8" {
            let particleSystem = SCNParticleSystem(named: "ReactorSceneKitParticleSystem", inDirectory: "")
            particlesNode.addParticleSystem(particleSystem!)
            NSLog("Loaded particle system for: Reactor")
            
        } else {
            let particleSystem = SCNParticleSystem(named: "BokehSceneKitParticleSystem", inDirectory: "")
            particlesNode.addParticleSystem(particleSystem!)
            NSLog("Loaded particle system for: Bokeh")
        }
        
        //particlesNode.addParticleSystem(particleSystem!)
        scene.rootNode.addChildNode(particlesNode)
        particles.scene = scene
        
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
