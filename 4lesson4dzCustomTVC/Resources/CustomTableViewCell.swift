//
//  CustomTableViewCell.swift
//  4lesson4dzCustomTVC
//
//  Created by Aiturgan Kurmanbekova on 22/2/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    private let view = MakerView().uiViewMaker()

    private let image = MakerView().uiImageMaker()
    
    private let nameLabel = MakerView().uiLabelMaker(size: 20, weight: .bold)
    
    private let label = MakerView().uiLabelMaker(textColor: .darkGray, size: 15)
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    private func setupUI() {
        contentView.addSubview(view)
        NSLayoutConstraint.activate(
            [view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 44),
             view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 17),
             view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -17),
             view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
             view.heightAnchor.constraint(equalToConstant: 220)
            ])
        
        view.addSubview(image)
        view.addSubview(nameLabel)
        view.addSubview(label)
        
        NSLayoutConstraint.activate(
            [image.heightAnchor.constraint(equalToConstant: 166),
             image.topAnchor.constraint(equalTo: view.topAnchor),
             image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             nameLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 10),
             nameLabel.heightAnchor.constraint(equalToConstant: 24),
             label.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
             label.heightAnchor.constraint(equalToConstant: 20)
            ])

    }
    
    
    func qwerty(goods: Goods) {
        image.image = goods.image
        nameLabel.text = goods.name
        label.text = goods.label
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
