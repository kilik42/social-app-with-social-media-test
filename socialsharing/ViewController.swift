//
//  ViewController.swift
//  socialsharing
//
//  Created by marvin evins on 3/28/19.
//  Copyright © 2019 fulldevdesign. All rights reserved.
//

import UIKit
import Social
class ViewController: UIViewController {

    @IBAction func buttonAction(_ sender: Any) {
        
        //alert
        let alert = UIAlertController(title: "Share", message: "share the message", preferredStyle: .actionSheet)
        
        //first action
        
        let actionOne = UIAlertAction(title: "share on facebook", style: .default) { (action) in
            print("success")
            
            // if user is connected to facebook
            if SLComposeViewController.isAvailable(forServiceType:  SLServiceTypeFacebook){
                let post = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
                
                post?.setInitialText("Poem of the day")
                post?.add(UIImage(named: "img.jpg"))
                
                self.present(post!, animated: true, completion: nil)
                
            } else{
                self.showAlert(service: "Facebook")
            }
            
        }
        

        
        //second action
        
        let actionOne2 = UIAlertAction(title: "share on twitter", style: .default) { (action) in
            print("success")
            
            // if user is connected to facebook
            if SLComposeViewController.isAvailable(forServiceType:  SLServiceTypeTwitter){
                let post = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
                
                post?.setInitialText("Poem of the day")
                post?.add(UIImage(named: "img.jpg"))
                
                self.present(post!, animated: true, completion: nil)
                
            } else{
                self.showAlert(service: "Twitter")
            }
            
        }
        
        //add action to action sheet facebook
        alert.addAction(actionOne)
        alert.addAction(actionOne2)
        
        //present alert
        self.present(alert, animated: true, completion: nil)
        
        
        
    }
    
    
    
    func  showAlert(service: String){
        let alert = UIAlertController(title: "error", message: "you are not connected to \(service)", preferredStyle: .alert)
        let action = UIAlertAction(title: "dismiss", style: .cancel, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

