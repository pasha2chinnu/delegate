//
//  SecondViewController.swift
//  Delegates
//
//  Created by kvanadev5 on 23/08/16.
//  Copyright © 2016 kvanadev5. All rights reserved.
//

import UIKit

/*first create delegate*/

protocol DataEnteredDelegate {
    func userDataEnterInformation(info:NSString)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    /*second create delegate for class */
    var delegate:DataEnteredDelegate? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func snedDataButtonClicked(sender: AnyObject) {
        
        /*third rise delegate*/
        if (delegate != nil) {
            let information:NSString = dataTextField.text! as NSString
            delegate?.userDataEnterInformation(info: information)
            self.navigationController!.popViewController(animated: true)
        }
        
        
    }
}
