//
//  MHAppearance.swift
//  Dystruth or Dare?
//
//  Created by Michael Hulet on 8/20/16.
//  Copyright © 2016 Michael Hulet. All rights reserved.
//

import UIKit

extension UIButton{
    func prettify(color: UIColor? = nil){
        let color: UIColor = color ?? titleLabel!.textColor
        layer.borderColor = color.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = 10
    }
}
