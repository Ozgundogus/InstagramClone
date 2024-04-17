//
//  Extensions.swift
//  InstagramClone
//
//  Created by Ozgun Dogus on 3.04.2024.
//

import UIKit


extension UIView {
    
    var top : CGFloat {
        return frame.origin.y
    }
    var bottom : CGFloat {
        return frame.origin.y+height
    }
    var left : CGFloat {
        return frame.origin.x
    }
    var right : CGFloat {
        return frame.origin.x+width
    }
    var width : CGFloat {
        return frame.size.width
    }
    var height : CGFloat {
        return frame.size.height
    }
  

    
    
}
