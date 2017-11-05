//
//  PunViewController.swift
//  iKid
//
//  Created by Xinyue Chen on 11/4/17.
//  Copyright © 2017 Xinyue Chen. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    var index: Int = 0
    @IBOutlet weak var nextButton: UIButton!
    var image1: UIImage = UIImage(named: "1.jpg")!
    var image2: UIImage = UIImage(named: "2.png")!
    var image3: UIImage = UIImage(named: "3.jpg")!
    var image4: UIImage = UIImage(named: "4.jpg")!
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        index = index - 1
        switchViews()
    }
    
    @IBAction func nextBtnPressed(_ sender: UIButton) {
        index = index + 1
        switchViews()
        
    }
    
    private func switchViews() {
        if index == 0 {
            imageView.image = image1
//            self.label.text = "Why wouldn’t the shrimp share his treasure?"
            backButton.isHidden = true
            nextButton.isHidden = false
        } else if index == 1 {
            imageView.image = image2
//            self.label.text = "Because he was a little shellfish."
            nextButton.isHidden = false
            backButton.isHidden = false
        } else if index == 2 {
            imageView.image = image3
            nextButton.isHidden = false
            backButton.isHidden = false
        } else if index == 3 {
            imageView.image = image4
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
