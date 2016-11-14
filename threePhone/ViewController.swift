//
//  ViewController.swift
//  threePhone
//
//  Created by 黃毓皓 on 2016/11/13.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var nameFirst = "Apple"
    var nameSecond = "Samsung"
    var nameThird = "Sony"
    
    var qaFirst = "中"
    var qaSecond = "中"
    var qaThird = "中"
    
    var monFirst = "20000"
    var monSecond = "20000"
    var monthird = "20000"
    
    var nowsenderTag:Int!
    @IBOutlet weak var first: UIButton!
    @IBOutlet weak var second: UIButton!
    @IBOutlet weak var third: UIButton!
    
    
    @IBAction func goNext(_ sender: AnyObject) {
        let but = sender as! UIButton
        self.performSegue(withIdentifier: "second", sender: but)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("will show viewcontroller")
        first.setTitle(nameFirst, for: .normal)
        second.setTitle(nameSecond, for: .normal)
        third.setTitle(nameThird, for: .normal)
//        self.first.titleLabel?.text = nameFirst
//        self.second.titleLabel?.text =  nameFirst
//        self.third.titleLabel?.text =  nameFirst
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let bartag = sender as! UIButton
        
        let controller = segue.destination as! SecondViewController
        nowsenderTag = bartag.tag
        controller.secondSenderTag = nowsenderTag
        let i7 = iphone7()
        let n7 = note7()
        let arc = sony()

        
        switch bartag.tag {
        case 1:
            controller.navigationItem.title = "Apple"
            i7.name = nameFirst
            i7.qa = qaFirst
            i7.mon = monFirst
            controller.name1 = i7.name
            controller.name2 = i7.qa
            controller.name3 = i7.mon
        case 2:
            controller.navigationItem.title = "Samsung"
            n7.name = nameSecond
            n7.qa = qaSecond
            n7.mon = monSecond
            controller.name1 = n7.name
            controller.name2 = n7.qa
            controller.name3 = n7.mon
            print("samsung")
        case 3:
            controller.navigationItem.title = "Sony"
            arc.name = nameThird
            arc.qa = qaThird
            arc.mon = monthird
            controller.name1 = arc.name
            controller.name2 = arc.qa
            controller.name3 = arc.mon

            print("sony")
        default:
            print("no no ")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        first.setTitle(nameFirst, for: .normal)
        second.setTitle(nameSecond, for: .normal)
        third.setTitle(nameThird, for: .normal)
//        first.titleLabel?.text = nameFirst
//        second.titleLabel?.text = nameSecond
//        third.titleLabel?.text = nameThird
    print("view id load")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

