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
    internal var images: [UIImage]
    
    // MARK: - Lifecycle
    
    init() {
        self.imageUrlStrings = []
        self.images = []
        
        for i in 0..<100 {
            self.imageUrlStrings.append("https://picsum.photos/id/\(i)"  + "/200/300")
        }
    }
    
    internal func fetchImage(forIndex index: Int, completionHandler: @escaping (UIImage, Int) -> ()) {
        guard index < imageUrlStrings.count, let url = URL.init(string: imageUrlStrings[index]) else {
            return
        }
        
        let resource = ImageResource(downloadURL: url)
                
        KingfisherManager.shared.retrieveImage(with: resource, options: nil, progressBlock: nil) { result in
            switch result {
            case .success(let value):
                completionHandler(value.image, index)
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
}
