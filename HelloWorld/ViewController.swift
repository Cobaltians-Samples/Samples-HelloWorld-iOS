//
//  ViewController.swift
//  HelloWorld
//
//  Created by antoine on 12/10/2016.
//  Copyright © 2016 Cobaltians. All rights reserved.
//

import UIKit

class ViewController: CobaltViewController {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        //On set le resourcePath de cobalt
        initWithPage("index.html", andController: "default")
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
