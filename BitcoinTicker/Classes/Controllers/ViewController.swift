//
//  ViewController.swift
//  BitcoinTicker
//
//  Created by Miyoshi Masataka on 2018/03/11.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {
    
    let bitcoinView: BitcoinView = {
        
        let bitcoinView = BitcoinView(frame: UIScreen.main.bounds)
        bitcoinView.backgroundColor = .white
        
        return bitcoinView
        
    }()
    
    // MARK: - Properties
    
    let baseURL = "https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC"
    let currencyArray = ["AUD","BRL","CAD", "JPY","USD"]
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add Views
        [bitcoinView].forEach{ self.view.addSubview($0) }
        
        bitcoinView.pickerView.dataSource = self
        bitcoinView.pickerView.delegate = self
        
    }
    
    // MARK: - Methods
    
    private func updateUI() {
        
        print("Updated UI.")
        
    }

}

// MARK: - UIPickerViewDataSource
/*************************************************************************************/
extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currencyArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currencyArray[row]
    }
    
}

// MARK: - UIPickerViewDelegate
/*************************************************************************************/
extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let requestURL = baseURL + currencyArray[row]
        
        // Update UI
        updateUI()
        
    }
    
}










