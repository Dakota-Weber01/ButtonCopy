//
//  ViewController.swift
//  ButtonCopy
//
//  Created by Weber, Dakota on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!
    
    @IBAction func buttonMethod(_ sender: Any)
    {
        Button.backgroundColor =
        createRandomColor()
        view.backgroundColor = createRandomColor()
        
        Button.setTitleColor(createRandomColor(), for: .normal)
    }
    private func createRandomColor() -> UIColor
        
    { //Need RGB Values CGFloat
        let newColor :UIColor
        let redValue = CGFloat(Double (arc4random_uniform(256)) / 255.00)
        let greenValue = CGFloat(Double(arc4random_uniform(256)) / 255.00)
        let blueValue = CGFloat(Double(arc4random_uniform(256)) / 255.00)
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue)
        return newColor
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

