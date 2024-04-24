//
//  MainSecondViewController.swift
//  MultipleStoryBoard
//
//  Created by Jijo G Oommen on 06/01/21.
//

import UIKit

class MainSecondViewController: UIViewController,getValue {
    func getTheValue(value: String) {
        print("value from protocol :",value)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnGoTo5tapped(_ sender: UIButton) {
        
        //SecondSecondViewController
        let storyBoard : UIStoryboard = UIStoryboard(name: "Second", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SecondSecondViewController") as! SecondSecondViewController
        nextViewController.abc = "123"
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    

    @IBAction func btnNextTspped(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainThirdViewController") as! MainThirdViewController
        vc.modelDelegate = self
        self.present(vc, animated: true, completion: nil)
    }
}
