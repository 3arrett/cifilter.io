//
//  WorkshopParameterView.swift
//  CIFilter.io
//
//  Created by Noah Gilmore on 12/24/18.
//  Copyright © 2018 Noah Gilmore. All rights reserved.
//

import UIKit

final class WorkshopParameterView: UIView {
    enum ParameterType {
        case slider(min: Float, max: Float)
    }

    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 10
        return view
    }()

    private let nameLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont(name: "Courier New", size: 17)
        view.numberOfLines = 1
        return view
    }()

    init(type: ParameterType, name: String) {
        super.init(frame: .zero)

        addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        nameLabel.text = name

        switch type {
        case let .slider(min, max):
            let slider = NumericSlider(min: min, max: max)
            slider.widthAnchor <=> 400
            stackView.addArrangedSubview(slider)
        }

        stackView.edgesToSuperview()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
