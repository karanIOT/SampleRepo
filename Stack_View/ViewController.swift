//
//  ViewController.swift
//  Stack_View
//
//  Created by Rathore, Karanvir (US - Mumbai) on 1/26/16.
//  Copyright © 2016 Rathore, Karanvir (US - Mumbai). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    
    @IBOutlet weak var axisSwitch: UISwitch!
    @IBOutlet weak var stackView: UIStackView!
    
    
    @IBOutlet weak var axisLabel: UILabel!

    @IBAction func axisChange(sender: UISwitch) {
        UIView.animateWithDuration(0.9) {
            self.updateConstraintsForAxis();
        }
    }
    
    private func updateConstraintsForAxis()
    {
        if(axisSwitch.on)
        {
           axisLabel.text = "Horizontal"
           stackView.axis = .Horizontal
        }
        else
        {
            axisLabel.text = "Vertical"
            stackView.axis = .Vertical
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateConstraintsForAxis();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

