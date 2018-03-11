//
//  ViewController.swift
//  BitcoinTicker
//
//  Created by Miyoshi Masataka on 2018/03/11.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let bitcoinView: BitcoinView = {
        
        let bitcoinView = BitcoinView(frame: UIScreen.main.bounds)
        bitcoinView.backgroundColor = .green
        
        return bitcoinView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add Views
        [bitcoinView].forEach{ self.view.addSubview($0) }
        
    }

}












