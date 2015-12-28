//
//  ViewController.swift
//  Dizinair
//
//  Created by m2sar on 10/10/2014.
//  Copyright (c) 2014 m2sar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        changetous(self.num)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var num:Int=0
    
    @IBOutlet weak var stepperHG: UIStepper!
    @IBOutlet weak var switchHD: UISwitch!
    @IBOutlet weak var segctrlDiz: UISegmentedControl!
    @IBOutlet weak var segctrlUnit: UISegmentedControl!
    
    @IBOutlet weak var sliderB: UISlider!
    
    @IBOutlet weak var numberLabel: UILabel!
    

    @IBAction func stepperHGAction(sender: AnyObject) {
        self.num = Int(stepperHG.value)
        changetous(self.num)
    }
   
    @IBAction func switchHDAction(sender: AnyObject) {
        
        if switchHD.on {
            numberLabel.text = String(format: "%X", num)
            
        }else {
            numberLabel.text = "\(num)"
            
        }


    }

    @IBAction func segcrtlDizAction(sender: AnyObject) {
        
        self.num = segctrlDiz.selectedSegmentIndex*10 + segctrlUnit.selectedSegmentIndex
        changetous(self.num)
    }
    
    @IBAction func segctrlUnitAction(sender: AnyObject) {
        
        self.num = segctrlDiz.selectedSegmentIndex*10 + segctrlUnit.selectedSegmentIndex
        changetous(self.num)
    }
    
    @IBAction func sliderBAction(sender: AnyObject) {
        
        self.num = Int(sliderB.value)
        changetous(self.num)
    }
    
    @IBAction func razAction(sender: AnyObject) {
        
        self.num = 0
        changetous(self.num)
    }
    
    
    func changetous( num : Int ) {
        
        
        stepperHG.value = Double(num)
        
        segctrlDiz.selectedSegmentIndex = num/10
        segctrlUnit.selectedSegmentIndex = num%10
        sliderB.value = Float(num)
        
        if num == 42 {
            numberLabel.textColor = UIColor.redColor()
        } else {
            numberLabel.textColor = UIColor.blackColor()
        }
        
        if switchHD.on {
            numberLabel.text = String(format: "%X", num)
            
        }else {
            numberLabel.text = "\(num)"
            
        }
    }
    


}

