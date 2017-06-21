//
//  ViewController.swift
//  ＭyApp06
//
//  Created by user on 2017/6/21.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var svalue: UISwitch!
    @IBOutlet weak var stepValue: UIStepper!
    @IBOutlet weak var btn: UIButton!
//    private var isOn:Bool
    
    
    @IBAction func switchStatus(_ sender: Any) {
        print(svalue.isOn)
    }
    
    @IBAction func clickBtn(_ sender: Any) {
        btn.isSelected = !btn.isSelected
        
        
    }
    
    
    @IBAction func changeValue(_ sender: Any) {
        print(stepValue.value)

    }
    
    private func initView(){
        stepValue.maximumValue = 100
        stepValue.minimumValue = 0
        stepValue.value = 50
        stepValue.stepValue = 0.5
        
        btn.setImage(UIImage(named:"switch_on"), for: UIControlState.normal)
        btn.setImage(UIImage(named:"switch_off"), for: UIControlState.selected)    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

