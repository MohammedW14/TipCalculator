//
//  ViewController.swift
//  TipCalculator
//
//  Created by Student on 10/13/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var total: UITextField!
    @IBOutlet weak var ten: UIButton!
    @IBOutlet weak var fifteen: UIButton!
    @IBOutlet weak var twenty: UIButton!
    @IBOutlet weak var twentyfive: UIButton!
    @IBOutlet weak var d: UIButton!
    @IBOutlet weak var u: UIButton!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var perperson: UILabel!
    @IBOutlet weak var gt: UIImageView!
    @IBOutlet weak var gf: UIImageView!
    @IBOutlet weak var et: UIImageView!
    @IBOutlet weak var ef: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        total.keyboardType = UIKeyboardType.numbersAndPunctuation
        
        gt.image = UIImage(named: "Grant.jpeg")
        gf.image = UIImage(named: "Grant.jpeg")
        et.image = UIImage(named: "Grant.jpeg")
        ef.image = UIImage(named: "Grant.jpeg")
    }
    
    var n = 0
    var amount : Double = 0.0
    var ttt : Double = 0.0
    
    
    @IBAction func ten(_ sender: UIButton)
    {
        let holder = total.text
        let bill = Double(holder!)!
        
        amount = 1.1 * bill
        ttt = 0.1 * bill
        
        
        gt.image = UIImage(named: "Eric.jpg")
        gf.image = UIImage(named: "Grant.jpeg")
        et.image = UIImage(named: "Grant.jpeg")
        ef.image = UIImage(named: "Grant.jpeg")
        
    }
    
    @IBAction func fifteen(_ sender: UIButton)
    {
        let holder = total.text
        let bill = Double(holder!)!
        
        amount = 1.15 * bill
        ttt = 0.15 * bill
        
        gt.image = UIImage(named: "Grant.jpeg")
        gf.image = UIImage(named: "Eric.jpg")
        et.image = UIImage(named: "Grant.jpeg")
        ef.image = UIImage(named: "Grant.jpeg")
        
    }
    
    @IBAction func twenty(_ sender: UIButton)
    {
        let holder = total.text
        let bill = Double(holder!)!
        
        amount = 1.2 * bill
        ttt = 0.2 * bill
        
        gt.image = UIImage(named: "Grant.jpeg")
        gf.image = UIImage(named: "Grant.jpeg")
        et.image = UIImage(named: "Eric.jpg")
        ef.image = UIImage(named: "Grant.jpeg")
        
    }
    
    @IBAction func twentyfive(_ sender: UIButton)
    {
        let holder = total.text
        let bill = Double(holder!)!
        
        amount = 1.25 * bill
        ttt = 0.25 * bill
        
        gt.image = UIImage(named: "Grant.jpeg")
        gf.image = UIImage(named: "Grant.jpeg")
        et.image = UIImage(named: "Grant.jpeg")
        ef.image = UIImage(named: "Eric.jpg")
        
    }
    
    @IBAction func u(_ sender: UIButton)
    {
        n += 1
        number.text = "\(n)"
        
        let k = ttt / Double(n)
        let j = String(format:"%.2f", k)
        tip.text = j
        
        let m = amount / Double(n)
        let l = String(format:"%.2f", m)
        perperson.text = l
    }
    
    @IBAction func d(_ sender: UIButton)
    {
        if(n >= 2)
        {
            n -= 1
            number.text = "\(n)"
        
        let k = ttt / Double(n)
        let l = String(format:"%.2f", k)
        tip.text = l
        
        let m = amount / Double(n)
        let j = String(format:"%.2f", m)
        perperson.text = j
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

