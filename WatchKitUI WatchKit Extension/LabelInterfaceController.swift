//
//  LabelInterfaceController.swift
//  WatchKitUI
//
//  Created by Brown Magic on 5/24/15.
//  Copyright (c) 2015 codeHatcher. All rights reserved.
//

import WatchKit
import Foundation


class LabelInterfaceController: WKInterfaceController {
  
  @IBOutlet weak var myLabel: WKInterfaceLabel!
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    // Configure interface objects here.
//    myLabel.setText("Hello World")
//    myLabel.setTextColor(UIColor.redColor())
    
    // customize our fonts
    var boldFont = UIFont(name: "Exo-Bold", size: 15.0)!
    var attributesDictionary = [
      NSFontAttributeName: boldFont,
      NSForegroundColorAttributeName: UIColor.redColor()
    ]
    var attributedString = NSAttributedString(string: "Hello Class", attributes: attributesDictionary)
    myLabel.setAttributedText(attributedString)
    
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
}
