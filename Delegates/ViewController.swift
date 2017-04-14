//
//  ViewController.swift
//  Delegates
//
//  Created by kvanadev5 on 23/08/16.
//  Copyright © 2016 kvanadev5. All rights reserved.
//

import UIKit

/*fourth define delgate*/
class ViewController: UIViewController,DataEnteredDelegate {
    @IBOutlet weak var showLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*fifth integrate delegate*/
    func userDataEnterInformation(info: NSString) {
    showLabel.text = info as String
    }
    
    

    @IBAction func addButtonClicked(sender: AnyObject) {
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = mainStoryboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        /*important line pass delegate*/
        secondVC.delegate = self
        self.navigationController!.pushViewController(secondVC, animated: false)

    }
}

