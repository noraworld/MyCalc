//
//  ResultViewController.swift
//  MyCalc
//
//  Created by 青木宏祐 on 2017/07/11.
//  Copyright © 2017年 noraworld. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var price: Int = 0
    var percent: Int = 0

    @IBOutlet weak var resultField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let percentValue = Float(percent) / 100
        let discountPrice = Float(price) * percentValue
        let percentOffPrice = price - Int(discountPrice)
        resultField.text = "\(percentOffPrice)"
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
