//
//  ViewController.swift
//  MyCalc
//
//  Created by 青木宏祐 on 2017/07/11.
//  Copyright © 2017年 noraworld. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceField: UITextField!

    func tapButton(buttonValue: String) {
        let value = priceField.text! + buttonValue
        if let price = Int(value) {
            priceField.text = "\(price)"
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

    @IBAction func tap00Button(_ sender: Any) {
        tapButton(buttonValue: "00")
    }

    @IBAction func tapClearButton(_ sender: Any) {
        priceField.text = "0"
    }

    @IBAction func restart(_ segue: UIStoryboardSegue) {
        priceField.text = "0"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! PercentViewController

        if let price = Int(priceField.text!) {
            viewController.price = price
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

