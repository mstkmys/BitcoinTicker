//
//  BitcoinView.swift
//  BitcoinTicker
//
//  Created by Miyoshi Masataka on 2018/03/11.
//  Copyright © 2018年 Masataka Miyoshi. All rights reserved.
//

import UIKit

class BitcoinView: UIView {
    
    let bitcoinImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "bitcoin")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
    }()
    
    let priceLabel: UILabel = {
       
        let label = UILabel()
        label.text = "Price"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 50)
        
        return label
        
    }()
    
    let pickerView: UIPickerView = {
        
        let pickerView = UIPickerView()
        
        return pickerView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add Views
        [priceLabel, bitcoinImageView, pickerView].forEach{ self.addSubview($0) }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Layout SubViews
    override func layoutSubviews() {
        
        priceLabel.anchor(
            top: nil,
            leading: self.leadingAnchor,
            bottom: nil,
            trailing: self.trailingAnchor,
            size: .init(width: 0, height: 100)
        )
        priceLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        bitcoinImageView.anchor(
            top: self.safeAreaLayoutGuide.topAnchor,
            leading: self.leadingAnchor,
            bottom: priceLabel.topAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 20, right: 20)
        )
        
        pickerView.anchor(
            top: priceLabel.bottomAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 20, right: 20)
        )
        
    }

}











