//
//  DadViewController.swift
//  iKid
//
//  Created by Xinyue Chen on 11/4/17.
//  Copyright © 2017 Xinyue Chen. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    var index: Int = 0
    
    @IBAction func nextBtnPressed(_ sender: UIButton) {
        index = index + 1
        switchViews()
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        index = index - 1
        switchViews()
    }
    
    private func switchViews() {
        if index == 0 {
            label.text = "After my wife had given birth to our baby, the nurse asked me, \"Do you have a name yet?\""
            nextButton.isHidden = false
            backButton.isHidden = true
        } else if index == 1 {
            label.text = "I said, \"Yes. Steve.\""
            nextButton.isHidden = false
            backButton.isHidden = false
        } else if index == 2 {
            label.text = "She said, \"Awww! That's a lovely name!\""
            nextButton.isHidden = false
            backButton.isHidden = false
        } else if index == 3 {
            label.text = "\"Thanks.\" I said. \"But what do you think we should call the baby?\""
            nextButton.isHidden = true
            backButton.isHidden = false
        }
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
