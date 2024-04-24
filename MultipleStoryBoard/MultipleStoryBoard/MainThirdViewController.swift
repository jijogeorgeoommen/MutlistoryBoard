//
//  MainThirdViewController.swift
//  MultipleStoryBoard
//
//  Created by Jijo G Oommen on 06/01/21.
//

import UIKit


protocol getValue : class {
   func getTheValue(value: String)
}

class MainThirdViewController: UIViewController {
    
    var abc : String?
    weak var modelDelegate : getValue?
    override func viewDidLoad() {
        super.viewDidLoad()
      
        abc = "123"
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        modelDelegate?.getTheValue(value: abc!)
        print("On Swipe :", abc)
    }
    
    @IBAction func btnNextTapped(_ sender: UIButton) {
        modelDelegate?.getTheValue(value: abc!)
        print("On Button click :", abc)
        self.dismiss(animated: true, completion: nil)
    }
    
   
    

}
