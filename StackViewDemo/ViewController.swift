//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Adrian Bolinger on 3/4/18.
//  Copyright © 2018 Adrian Bolinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var buttonOne: UIButton!
  @IBOutlet weak var buttonTwo: UIButton!
  @IBOutlet weak var buttonThree: UIButton!
  @IBOutlet weak var buttonFour: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green]
    let buttons = [buttonOne, buttonTwo, buttonThree, buttonFour].flatMap{$0}
    let buttonDict = zip(buttons, colors)
    
    for (button, color) in buttonDict {
      button.backgroundColor = color
    }
  }
  
  // MARK: - IBActions
  
  @IBAction func buttonAction(_ sender: UIButton) {
    switch sender {
    case buttonOne:
      print("Button One")
    case buttonTwo:
      print("Button Two")
    case buttonThree:
      print("Button Three")
    case buttonFour:
      print("Button Four")
    default:
      return
    }
    
  }
}

