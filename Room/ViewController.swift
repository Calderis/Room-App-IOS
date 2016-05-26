//
//  ViewController.swift
//  Room
//
//  Created by Rémi WETTEREN on 26/05/2016.
//  Copyright © 2016 Room. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //First Screen
        let vcB = ViewControllerB(nibName: "ViewControllerB", bundle: nil)
        
        self.addChildViewController(vcB)
        self.scrollView.addSubview(vcB.view)
        vcB.didMoveToParentViewController(self)
        
        let vcC = ViewControllerB(nibName: "ViewControllerC", bundle: nil)
        
        var frame1 = vcC.view.frame
        frame1.origin.x = self.view.frame.width
        vcC.view.frame = frame1
        
        self.addChildViewController(vcC)
        self.scrollView.addSubview(vcC.view)
        vcC.didMoveToParentViewController(self)
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 2, self.view.frame.size.height - 66);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

