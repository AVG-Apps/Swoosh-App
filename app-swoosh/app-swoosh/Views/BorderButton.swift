//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Aron van Groningen on 13/11/2018.
//  Copyright © 2018 Aron van Groningen. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

  override func awakeFromNib() {
    super.awakeFromNib()
    layer.borderWidth = 2.0
    layer.borderColor = UIColor.white.cgColor
  }
  
  

}
