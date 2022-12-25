//
//  PercentViewController.swift
//  MyCalc
//
//  Created by 青木宏祐 on 2017/07/11.
//  Copyright © 2017年 noraworld. All rights reserved.
//

import UIKit

class PercentViewController: UIViewController {
    var price: Int = 0
    @IBOutlet weak var percentField: UITextField!

    func tapButton(buttonValue: String) {
        let value = percentField.text! + buttonValue
        if let percent = Int(value) {
            percentField.text = "\(percent)"
        }
    }

    @IBAction func tap1Button(_ sender: Any) {
        tapButton(buttonValue: "1")
    }

    @IBAction func tap2Button(_ sender: Any) {
        tapButton(buttonValue: "2")
    }

    @IBAction func tap3Button(_ sender: Any) {
        tapButton(buttonValue: "3")
    }

    @IBAction func tap4Button(_ sender: Any) {
        tapButton(buttonValue: "4")
    }

    @IBAction func tap5Button(_ sender: Any) {
        tapButton(buttonValue: "5")
    }

    @IBAction func tap6Button(_ sender: Any) {
        tapButton(buttonValue: "6")
    }

    @IBAction func tap7Button(_ sender: Any) {
        tapButton(buttonValue: "7")
    }

    @IBAction func tap8Button(_ sender: Any) {
        tapButton(buttonValue: "8")
    }

    @IBAction func tap9Button(_ sender: Any) {
        tapButton(buttonValue: "9")
    }

    @IBAction func tap0Button(_ sender: Any) {
        tapButton(buttonValue: "0")
    }

    @IBAction func tapClearButton(_ sender: Any) {
        percentField.text = "0"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ResultViewController

        viewController.price = price
        if let percent = Int(percentField.text!) {
            viewController.percent = percent
        }
    }

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
