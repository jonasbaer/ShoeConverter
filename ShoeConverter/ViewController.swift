//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Jonas Baer on 02.03.15.
//  Copyright (c) 2015 Jonas Baer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoesSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!




    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = mensShoesSizeTextField.text // let vs. var (constant vs. variable)
//        let numberFromTextField = sizeFromTextField.toInt() //optional
//        var integerFromTextField = numberFromTextField! // unwrap

        let sizeFromTextField = mensShoesSizeTextField.text.toInt()! // 3 lines above - refactored
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        mensShoesSizeTextField.resignFirstResponder()


//        integerFromTextField += conversionConstant
//        mensConvertedShoeSizeLabel.hidden = false
//        let stringWithUpdatedShoeSize = "Your converted shoe size is: \(integerFromTextField)"
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize


    }

}

