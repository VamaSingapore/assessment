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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
