//
//  GoodViewController.swift
//  iKid
//
//  Created by Xinyue Chen on 11/4/17.
//  Copyright © 2017 Xinyue Chen. All rights reserved.
//

import UIKit

class GoodViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nextButton: UIButton!

    var index: Int = 0

    @IBAction func nextBtnClicked(_ sender: UIButton) {
        NSLog("\(index)")
        index = index + 1
        switchViews()
    }

    private func switchViews() {
        if index == 0 {
            self.label.text = "Knock, knock"
            nextButton.isHidden = false
            backButton.isHidden = true
        } else if index == 1 {
            self.label.text = "Who's there?"
            nextButton.isHidden = false
            backButton.isHidden = false
        } else if index == 2 {
            self.label.text = "Amanda"
            nextButton.isHidden = false
            backButton.isHidden = false
        } else if index == 3 {
            self.label.text = "Amanda who?"
            nextButton.isHidden = false
            backButton.isHidden = false
        } else if index == 4 {
            self.label.text = "A man da fix your sink!"
            nextButton.isHidden = true
            backButton.isHidden = false
        }
    }
    
    @IBAction func backBtnClicked(_ sender: UIButton) {
        NSLog("\(index)")
        index = index - 1
        switchViews()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
