//
//  SecondViewController.swift
//  4lesson4dzCustomTVC
//
//  Created by Aiturgan Kurmanbekova on 24/2/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var image = MakerView().uiImageMaker()
    
    
    private let topBtnsSV = MakerView().uiStackViewMaker(axis: .horizontal,
                                                         distribution: .fill)
    
    private let xButton = MakerView().uiButtonMaker(title: nil,
                                                    image: UIImage(systemName: "xmark"),
                                                    tintColor: .black,
                                                    backgroundColor: .white, 
                                                    cornerRadius: 18.5)
    
    private let someButton = MakerView().uiButtonMaker(title: nil,
                                                       image: UIImage(systemName: "arrow.up"),
                                                       tintColor: .black,
                                                       backgroundColor: .white,
                                                       cornerRadius: 18.5)
    
    private let likeButton = MakerView().uiButtonMaker(title: nil,
                                                       image: UIImage(systemName: "suit.heart"),
                                                       tintColor: .black,
                                                       backgroundColor: .white,
                                                       cornerRadius: 18.5)
    
    
    let nameLabel = MakerView().uiLabelMaker(size: 32,
                                             weight: .bold)
    
    private var stars = MakerView().uiImageMaker()
        
    
    private let priceStackView = MakerView().uiStackViewMaker(axis: .horizontal,
                                                              distribution: .fill)
    
    let priceLabel = MakerView().uiLabelMaker(textColor: .systemBlue,
                                              size: 20,
                                              weight: .bold)
    
    private let minusBtn = MakerView().uiButtonMaker(title: nil,
                                                     image: UIImage(systemName: "minus"),
                                                     tintColor: .black,
                                                     backgroundColor: .systemGray5,
                                                     cornerRadius: 17)
    
    private let countLabel = MakerView().uiLabelMaker(text: "1",
                                                      textAlignment: .center)
    
    private let plusBtn = MakerView().uiButtonMaker(title: nil,
                                                    image: UIImage(systemName: "plus"),
                                                    tintColor: .black,
                                                    backgroundColor: .systemGray5,
                                                    cornerRadius: 17)
    
    
    private let detailsLabel = MakerView().uiLabelMaker(text: "Product Details",
                                                        size: 20,
                                                        weight: .bold)
    
        
    
    private let horizontalSV = MakerView().uiStackViewMaker(axis: .horizontal)
    
    
    private let detailsSV = MakerView().uiStackViewMaker(axis: .vertical)
    
    private let roomTypeLabel = MakerView().uiLabelMaker(text: "Room Type", 
                                                         size: 15)
    
    private let colorLabel = MakerView().uiLabelMaker(text: "Color", 
                                                      size: 15)
    
    private let materialLabel = MakerView().uiLabelMaker(text: "Material", 
                                                         size: 15)
    
    private let dimensionsLabel = MakerView().uiLabelMaker(text: "Dimensions", 
                                                           size: 15)
    
    private let weightLabel = MakerView().uiLabelMaker(text: "Weight", 
                                                       size: 15)
    
    
    private let valuesSV = MakerView().uiStackViewMaker(axis: .vertical)
    
    let roomTypeValue = MakerView().uiLabelMaker()
    
    let colorValue = MakerView().uiLabelMaker()
    
    let materialValue = MakerView().uiLabelMaker()
    
    let dimensionsValue = MakerView().uiLabelMaker()
    
    let weightValue = MakerView().uiLabelMaker()
    
    
    private let buyButton = MakerView().uiButtonMaker(title: "Buy",
                                                      titleColor: .white,
                                                      backgroundColor: .systemBlue,
                                                      cornerRadius: 12)
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(image)
        NSLayoutConstraint.activate(
            [image.topAnchor.constraint(equalTo: view.topAnchor),
             image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             image.heightAnchor.constraint(equalToConstant: 375)
            ])
        
        view.addSubview(topBtnsSV)
        NSLayoutConstraint.activate(
            [topBtnsSV.topAnchor.constraint(equalTo: image.topAnchor, constant: 100),
             topBtnsSV.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant: 16),
             topBtnsSV.trailingAnchor.constraint(equalTo: image.trailingAnchor, constant: -16),
             topBtnsSV.heightAnchor.constraint(equalToConstant: 36)
            ])
        
        topBtnsSV.addArrangedSubview(xButton)
        topBtnsSV.addArrangedSubview(someButton)
        topBtnsSV.addArrangedSubview(likeButton)
        
        NSLayoutConstraint.activate(
            [xButton.leadingAnchor.constraint(equalTo: topBtnsSV.leadingAnchor),
             xButton.trailingAnchor.constraint(equalTo: topBtnsSV.trailingAnchor, constant: -324),
             
             someButton.leadingAnchor.constraint(equalTo: topBtnsSV.leadingAnchor, constant: 278),
             someButton.widthAnchor.constraint(equalToConstant: 36),
             
             likeButton.trailingAnchor.constraint(equalTo: topBtnsSV.trailingAnchor),
             likeButton.widthAnchor.constraint(equalToConstant: 36)
            ])
        
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate(
            [nameLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
             nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             nameLabel.heightAnchor.constraint(equalToConstant: 28)
            ])
        
        view.addSubview(stars)
        NSLayoutConstraint.activate(
            [stars.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
             stars.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             stars.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        view.addSubview(priceStackView)
        NSLayoutConstraint.activate(
            [priceStackView.topAnchor.constraint(equalTo: stars.bottomAnchor, constant: 30),
             priceStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             priceStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
             priceStackView.heightAnchor.constraint(equalToConstant: 32)
            ])
        
        priceStackView.addArrangedSubview(priceLabel)
        priceStackView.addArrangedSubview(minusBtn)
        priceStackView.addArrangedSubview(countLabel)
        priceStackView.addArrangedSubview(plusBtn)
        
        NSLayoutConstraint.activate(
            [priceLabel.leadingAnchor.constraint(equalTo: priceStackView.leadingAnchor),
             minusBtn.trailingAnchor.constraint(equalTo: countLabel.leadingAnchor, constant: -5),
             minusBtn.widthAnchor.constraint(equalToConstant: 34),
             countLabel.trailingAnchor.constraint(equalTo: plusBtn.leadingAnchor, constant: -5),
             countLabel.widthAnchor.constraint(equalToConstant: 30),
             plusBtn.trailingAnchor.constraint(equalTo: priceStackView.trailingAnchor),
             plusBtn.widthAnchor.constraint(equalToConstant: 34)
            ])
        
        view.addSubview(detailsLabel)
        NSLayoutConstraint.activate(
            [detailsLabel.topAnchor.constraint(equalTo: priceStackView.bottomAnchor, constant: 30),
             detailsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             detailsLabel.heightAnchor.constraint(equalToConstant: 24)
            ])
        
        view.addSubview(horizontalSV)
        NSLayoutConstraint.activate(
            [horizontalSV.topAnchor.constraint(equalTo: detailsLabel.bottomAnchor, constant: 30),
             horizontalSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             horizontalSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
             horizontalSV.heightAnchor.constraint(equalToConstant: 120)
            ])
        
        horizontalSV.addArrangedSubview(detailsSV)
        horizontalSV.addArrangedSubview(valuesSV)
        
        detailsSV.addArrangedSubview(roomTypeLabel)
        detailsSV.addArrangedSubview(colorLabel)
        detailsSV.addArrangedSubview(materialLabel)
        detailsSV.addArrangedSubview(dimensionsLabel)
        detailsSV.addArrangedSubview(weightLabel)
        
        valuesSV.addArrangedSubview(roomTypeValue)
        valuesSV.addArrangedSubview(colorValue)
        valuesSV.addArrangedSubview(materialValue)
        valuesSV.addArrangedSubview(dimensionsValue)
        valuesSV.addArrangedSubview(weightValue)
        
        view.addSubview(buyButton)
        NSLayoutConstraint.activate(
            [buyButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
             buyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             buyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
             buyButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        
    }
    
    var count = 1
    var price = 0
    
    @objc private func plus() {
        count += 1
        
        
    }

}
