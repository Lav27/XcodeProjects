//
//  ViewController.swift
//  Calculator
//
//  Created by R, Lavanya on 3/12/18.
//  Copyright © 2018 R, Lavanya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        count=1
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var displayLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var labelString: String = ""
    var count=1
    var operand1 = ""
    var operand2 = ""
    var operatorEntered = ""
    var result=""
    @IBAction func numberPressed(_ sender: UIButton) {
       
        if labelString.count<=8{
            labelString += "\(sender.tag)"
        }
        displayLabel.text = labelString
    
    }
    
    @IBAction func dotPressed(_ sender: UIButton) {
        if labelString.count<=7{
            labelString+="."
        }
        displayLabel.text=labelString
    
    }
    
    @IBAction func equalPressed(_ sender: UIButton) {
   operand2=labelString
        labelString=""
        if operatorEntered == "+"{
            result = "\(Double(operand1)! + Double(operand2)!)"
        }
        else if operatorEntered == "-"{
            result = "\(Double(operand1)! - Double(operand2)!)"
        }
        else if operatorEntered == "*"{
            result = "\(Double(operand1)! * Double(operand2)!)"
        }
        else if operatorEntered == "/"{
            result = "\(Double(operand1)! / Double(operand2)!)"
        }
        
      operand1 = result
        if(Double(result)!.truncatingRemainder(dividingBy: 1)==0){
            result = "\(Int(Double(result)!))"
        }
        displayLabel.text=result
    }
    
    @IBAction func plusPressed(_ sender: UIButton) {
   operatorEntered = "+"
        if count == 1{
            operand1 = labelString}
        else{
            operand2 = labelString
        }
        labelString = ""
        count+=1
    }
    
    
    @IBAction func minusPressed(_ sender: UIButton) {
       
    operatorEntered = "-"
        if count == 1{
            operand1 = labelString}
        else{
            operand2 = labelString
        }
        labelString = ""
        count+=1
    }
    
    @IBAction func mulPressed(_ sender: UIButton) {
  operatorEntered = "*"
        if count == 1{
            operand1 = labelString}
        else{
            operand2 = labelString
        }
        labelString = ""
        count+=1
    }
        
    
    @IBAction func dividePressed(_ sender: UIButton) {
   operatorEntered = "/"
        if count == 1{
            operand1 = labelString}
        else{
            operand2 = labelString
        }
        labelString = ""
    count+=1
    }
    
    @IBAction func modPressed(_ sender: UIButton) {
        if count == 1{
            operand1 = labelString}
        else
        {
            operand1=result
        }
        labelString = ""
        result = "\(Double(operand1)! / Double(100))"
        displayLabel.text=result
        operand1 = result
    }
    
    
    @IBAction func allClearPressed(_ sender: UIButton) {
   
    displayLabel.text="0"
        operand1=""
        operand2=""
        labelString=""
        result=""
        operatorEntered=""
        count=1
    }
    
    
}

