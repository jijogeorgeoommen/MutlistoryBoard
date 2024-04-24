//
//  ViewController.swift
//  MultipleStoryBoard
//
//  Created by Jijo G Oommen on 06/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnNextTapped(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainSecondViewController") as! MainSecondViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
}

