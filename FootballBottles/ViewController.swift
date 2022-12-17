//
//  ViewController.swift
//  FootballBottles
//
//  Created by Golyakovph on 10.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var regView: UIView!
    @IBOutlet weak var loginView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segmentControl.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)

    }


    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            regView.alpha = 1
            loginView.alpha = 0
        } else {
            regView.alpha = 0
            loginView.alpha = 1
        }
    }
}

