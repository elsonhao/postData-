//
//  SecondViewController.swift
//  threePhone
//
//  Created by 黃毓皓 on 2016/11/13.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var name1:String!
    var name2:String!
    var name3:String!
    
    var secondSenderTag:Int!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var showPicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.text1.text = name1
//        self.text2.text = name2
//        self.text3.text = name3
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.text1.text = name1
        self.text2.text = name2
        self.text3.text = name3
        switch secondSenderTag {
        case 1:
            showPicture.image = UIImage(named: "i7")
        case 2:
            showPicture.image = UIImage(named: "s7")
        case 3:
            showPicture.image = UIImage(named: "arc")
        default:
            print("no picture")
        }
        
    }
   
//    @IBAction func goEdit(_ sender: AnyObject) {
//        let controller = self.storyboard?.instantiateViewController(withIdentifier: "ThirdBoard") as! ThirdViewController
//        
//        controller.name4 = name1
//        controller.name5 = name2
//        controller.name6 = name3
//        
//        self.present(controller, animated: true, completion: nil)
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let Thirdcontroller = segue.destination as! ThirdViewController
        
        Thirdcontroller.thirdSenderTag = secondSenderTag
        
        Thirdcontroller.name4 = name1
        Thirdcontroller.name5 = name2
        Thirdcontroller.name6 = name3
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
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
