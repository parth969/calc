//
//  ViewController.swift
//  calculator
//
//  Created by COE-026 on 23/08/19.
//  Copyright © 2019 COE-026. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var txtA: UITextField!
    
    
    @IBOutlet weak var txtB: UITextField!
    
    
    @IBAction func SegmentChange(_ sender: UISegmentedControl) {
    
        if txtA.text != "" || txtB.text != ""{
            
        
        
    let a = ((Int)(txtA.text!))!
    let b = ((Int)(txtB.text!))!
    var c = 0
    
        switch sender.selectedSegmentIndex {
        case 0:
            c = a + b
        case 1:
            c = a - b
        case 2:
            c = a * b
        case 3:
            c = a / b

        default:
            print("select method")
            break
        }
        
        let alertview = UIAlertController(title: "answer", message: "Answer is : \(c)", preferredStyle: .alert)
        
        alertview.addAction(UIAlertAction(title: "ok", style: .cancel, handler: { _ in
            
        }) )
        self.present(alertview, animated: true, completion: nil)
        
    }
        else {
            let alertview = UIAlertController(title: "missing value", message: "addmissing value", preferredStyle: .alert)
            
            alertview.addAction(UIAlertAction(title: "ok", style: .cancel, handler: { _ in
                
            }) )
            self.present(alertview, animated: true, completion: nil)
            
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

