//
//  TableViewCell.swift
//  assessment
//
//  Created by Bryan Nguyen on 5/5/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    static let cellId = "TableViewCell"
    internal var index: Int = 0
    
    // MARK: - Views

    private let randomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configuration
    
    internal func setup(index: Int) {
        self.index = index
        randomImageView.image = UIImage()
    }
    
    internal func configure(image: UIImage, index: Int) {
        if self.index == index {
            randomImageView.image = image
        }
    }
    
    private func configureViews() {
        addSubview(randomImageView)
        
        configureImageView()
    }
    
    private func configureImageView() {
        randomImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        randomImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        randomImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        randomImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }

}
