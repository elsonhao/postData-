//
//  ThirdViewController.swift
//  threePhone
//
//  Created by 黃毓皓 on 2016/11/13.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var name4:String!
    var name5:String!
    var name6:String!
    
    var thirdSenderTag:Int!
    
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var text5: UITextField!
    @IBOutlet weak var text6: UITextField!
    
    
    
    
 
    @IBAction func goup(_ sender: AnyObject) {
         
        let controller = self.navigationController?.viewControllers[1] as! SecondViewController
        let controller2 = self.navigationController?.viewControllers[0] as! ViewController
        
        switch thirdSenderTag {
        case 1:
            controller2.nameFirst = text4.text!
            controller2.qaFirst = text5.text!
            controller2.monFirst = text6.text!
        case 2:
            controller2.nameSecond = text4.text!
            controller2.qaSecond = text5.text!
            controller2.monSecond = text6.text!
        case 3:
            controller2.nameThird = text4.text!
            controller2.qaThird = text5.text!
            controller2.monthird = text6.text!
        default:
            print("no tag")
        }
        
        
        
        
        controller.name1 = text4.text
        controller.name2 = text5.text
        controller.name3 = text6.text
      self.navigationController?.popViewController(animated: true)
     
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.text4.text = name4
        self.text5.text = name5
        self.text6.text = name6
        

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
