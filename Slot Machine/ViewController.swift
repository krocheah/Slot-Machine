//
//  ViewController.swift
//  Slot Machine
//
//  Created by Mehmet Alkim Akat on 27/09/14.
//  Copyright (c) 2014 Mehmet Alkim Akat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Containers
    
    var firstContainer: UIView!
    var secondContainer: UIView!
    var thirdContainer: UIView!
    var fourthContainer: UIView!
    
    // Top Container
    
    var titleLabel: UILabel!
    
    // Constants
    let kMarginForView:CGFloat = 10.0
    let kSixth:CGFloat = 1.0/6.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupContainerViews()
        
        setupFirstContainer(thirdContainer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupContainerViews () {
        self.firstContainer = UIView(frame: CGRectMake(
            self.view.bounds.origin.x + kMarginForView,
            self.view.bounds.origin.y,
            self.view.bounds.width - (kMarginForView * 2),
            self.view.bounds.height * kSixth)
        )
        self.firstContainer.backgroundColor = UIColor.redColor()
        self.view.addSubview(self.firstContainer)
        
        self.secondContainer = UIView(frame: CGRectMake(
            self.view.bounds.origin.x + kMarginForView,
            firstContainer.frame.height,
            self.view.bounds.width - (kMarginForView * 2),
            self.view.bounds.height * (3 * kSixth))
        )
        self.secondContainer.backgroundColor = UIColor.blackColor()
        self.view.addSubview(self.secondContainer)
        
        self.thirdContainer = UIView(frame: CGRectMake(
            self.view.bounds.origin.x + kMarginForView,
            self.firstContainer.frame.height + self.secondContainer.frame.height,
            self.view.bounds.width - (kMarginForView * 2),
            self.view.bounds.height * kSixth)
        )
        self.thirdContainer.backgroundColor = UIColor.grayColor()
        self.view.addSubview(self.thirdContainer)
        
        self.fourthContainer = UIView(frame: CGRectMake(
            self.view.bounds.origin.x + kMarginForView,
            self.firstContainer.frame.height + self.secondContainer.frame.height + self.thirdContainer.frame.height,
            self.view.bounds.width - (2 * kMarginForView),
            self.view.bounds.height * kSixth)
        )
        self.fourthContainer.backgroundColor = UIColor.brownColor()
        self.view.addSubview(self.fourthContainer)
    }
    
    func setupFirstContainer (containerView: UIView) {
        self.titleLabel = UILabel()
        self.titleLabel.text = "Super Slots"
        self.titleLabel.textColor = UIColor.yellowColor()
        self.titleLabel.font = UIFont(name: "Markerfelt-wide", size: 40)
        self.titleLabel.sizeToFit()
        self.titleLabel.center = containerView.center
        
        containerView.addSubview(self.titleLabel)
    }


}

