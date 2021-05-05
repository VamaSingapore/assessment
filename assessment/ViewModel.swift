//
//  ViewModel.swift
//  assessment
//
//  Created by Bryan Nguyen on 5/5/21.
//

import UIKit
import Kingfisher

class ViewModel {
    
    // MARK: - Properties
    
    private var imageUrlStrings: [String]
    
    // MARK: - Lifecycle
    
    init() {
        self.imageUrlStrings = []
        
        for i in 0..<100 {
            if i == 97 {
                self.imageUrlStrings.append("")
            } else {
                self.imageUrlStrings.append("https://dummyimage.com/600x400/000/fff&text=\(i+1)")
            }
        }
    }
        
}
