//
//  ViewController.swift
//  AlertAnimation
//
//  Created by volive on 7/13/18.
//  Copyright © 2018 volive. All rights reserved.
//

import UIKit
import FCAlertView


class ViewController: UIViewController,FCAlertViewDelegate {
    
    @IBAction func showAlertBtn_Action(_ sender: UIButton) {
        let alert = FCAlertView()
        alert.delegate = self
        alert.colorScheme = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1)
        alert.showAlert(inView: self,
                        withTitle:"Alert Title",
                        withSubtitle:"This is your alert's subtitle. Keep it short and concise. 😜👌",
                        withCustomImage:UIImage.init(named: "closeBtn.png"),
                        withDoneButtonTitle:"SUBMIT",
                        andButtons:["Button 1", "Button 2"])
        alert.dismissOnOutsideTouch = true
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //  MARK:- HELPER METHODS
    
    //detect button touches by adding this method to your class
    func fcAlertView(_ alertView: FCAlertView, clickedButtonIndex index: Int, buttonTitle title: String) {
        
        if title == "Button 1" {
            // Perform Action for Button 1
            print("button1 action")
        }else if title == "Button 2"{
            // Perform Action for Button 2
            print("button 2 action")
        }
    }
    
    //detect button touch for the Done/Dismiss button,
    func fcAlertDoneButtonClicked(_ alertView: FCAlertView){
        print("done btn click")
        // alert.dismiss()
    }
    func fcAlertViewDismissed(_ alertView: FCAlertView!) {
        print("dismiss the alert !!!!!")
    }
    func fcAlertViewWillAppear(_ alertView: FCAlertView!) {
        print("alert view will be present")
        
    }
}

