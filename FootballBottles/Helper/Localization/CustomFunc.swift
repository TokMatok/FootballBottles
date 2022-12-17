//
//  CustomFunc.swift
//  CyberExplorer
//
//  Created by Демид Стариков on 17.12.2022.
//

import Foundation
import UIKit

class showVC: NSObject {
    
    class var shared: showVC {
        return UIApplication.shared.delegate as! showVC
    }
    
    func show(id: String) {
    }
}
