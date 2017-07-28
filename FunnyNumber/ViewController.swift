//
//  ViewController.swift
//  FunnyNumber
//
//  Created by Com06 on 7/27/2560 BE.
//  Copyright © 2560 team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var NumberLabel: UILabel!
    
    
    @IBAction func DecButtom(_ sender: Any) {
        
        let strNumber = NumberLabel.text
        let intNumber = Int(strNumber!)
        let myClass = MyClass()
        
        let intNewNumber = myClass.decreaseNumber(intNumber: intNumber!)
        print("Number ==> \(intNewNumber)")
        showNumber(intNumber: intNewNumber)
        

        
        
    }   //DecButton
    
    
    @IBAction func incButtom(_ sender: Any) {
        let strNumber = NumberLabel.text
        let intNumber = Int(strNumber!)
        let myClass = MyClass()
        
        let intNewNumber = myClass.increaseNumber(intNumber: intNumber!)
        print("Number ==> \(intNewNumber)")
        showNumber(intNumber: intNewNumber)
        
    }   //IncButton
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let testClass = MyClass()
        print("Name ==> \(testClass.strName)")
        
    } //viewDidLoad (main)

    func showNumber(intNumber: Int) -> Void {
        NumberLabel.text = "\(intNumber)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

