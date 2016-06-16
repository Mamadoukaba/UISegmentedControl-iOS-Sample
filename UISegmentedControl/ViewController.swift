//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Mamadou Kaba on 6/15/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var segmentContentLabel: UILabel!
    
    //MARK: - Properties
    //Initialize segmented Control
    var segmentedControl: UISegmentedControl!
    
    //Construct Item List Array for Segmented Control
    var items = ["Facebook", "Google", "Twitter", "Apple"]
    
    //MARK: - View Controller Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        //Construct Segmented Control
        segmentedControl = UISegmentedControl(items: items)
        //Position Segmented Control
        segmentedControl.center = CGPoint(x: view.center.x, y: view.center.y + 200)
        //Costumize Segmented Control
        segmentedControl.tintColor = UIColor.blackColor()
        //Add Segmented Control to SuperView
        view.addSubview(segmentedControl)
    
        
        
        //Add value changed target to segmented control
        segmentedControl.addTarget(self, action: "segmentedControlValueChanged:", forControlEvents: .ValueChanged)
    }
    
    
    //MARK: - Target Action
    //Function that gets called every time the segmented control value change.
    func segmentedControlValueChanged(sender: UISegmentedControl) {
        let selectedSegment = sender.selectedSegmentIndex
        segmentContentLabel.text = sender.titleForSegmentAtIndex(selectedSegment)
        
    }


}

