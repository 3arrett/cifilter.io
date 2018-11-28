//
//  FilterListNameCell.swift
//  CIFilter.io
//
//  Created by Noah Gilmore on 11/28/18.
//  Copyright © 2018 Noah Gilmore. All rights reserved.
//

import UIKit

final class FilterListNameCell: UITableViewCell {
    private let filterNameView = FilterListNameView()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.contentView.addSubview(filterNameView)
        filterNameView.edgesToSuperview()
    }

    func set(text: String) {
        filterNameView.set(text: text)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
