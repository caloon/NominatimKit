//
//  ViewController.swift
//  NominationSwift
//
//  Created by Josef Moser on 30/11/2016.
//  Copyright © 2016 Josef. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let location = Nominatim.getLocation(fromString: "22644 Lund")
    print(location.countryCode)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

