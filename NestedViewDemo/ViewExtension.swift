//
//  ViewExtension.swift
//  NestedViewDemo
//
//  Created by vivek shrivastwa on 13/05/21.
//

import Foundation
import UIKit

extension UIView {
    
    public var width:CGFloat {
        return frame.size.width
    }
    
    public var height:CGFloat {
        return frame.size.height
    }
    
    public var left:CGFloat {
        return frame.origin.x
    }
    
    public var right:CGFloat {
        return left + width
    }
    
    public var top:CGFloat {
        return frame.origin.y
    }
    
    public var bottom:CGFloat {
        return top + height
    }
    
}
