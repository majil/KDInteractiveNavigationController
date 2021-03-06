//
//  TwoViewController.swift
//  DemoApp
//
//  Created by Kingiol on 15/11/22.
//  Copyright © 2015年 Kingiol. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

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
    
    @IBAction func showActivityVC() {
        
        let activityViewController = UIActivityViewController(activityItems: ["hello"], applicationActivities: nil)
        activityViewController.interactiveNavigationBarHidden = true
        activityViewController.excludedActivityTypes = [
            .postToWeibo,
            .print,
            .assignToContact,
            .saveToCameraRoll,
            .addToReadingList,
            .postToFlickr,
            .postToVimeo,
            .assignToContact,
            .postToTencentWeibo,
            .airDrop
        ]
        self.present(activityViewController, animated: true, completion: nil)
    }

}
