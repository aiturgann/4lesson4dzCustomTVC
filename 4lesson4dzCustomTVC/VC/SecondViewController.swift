//
//  SecondViewController.swift
//  4lesson4dzCustomTVC
//
//  Created by Aiturgan Kurmanbekova on 24/2/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var goodsImage = MakerView().uiImageMaker()
    
    
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
    
    
    var detail: Details
    
    init(detailInit: Details) {
        self.detail = detailInit
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        setDetailData()
    }
    
    private func setupUI() {
        view.addSubview(goodsImage)
        NSLayoutConstraint.activate(
            [goodsImage.topAnchor.constraint(equalTo: view.topAnchor),
             goodsImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             goodsImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             goodsImage.heightAnchor.constraint(equalToConstant: 375)
            ])
        
        view.addSubview(topBtnsSV)
        NSLayoutConstraint.activate(
            [topBtnsSV.topAnchor.constraint(equalTo: goodsImage.topAnchor, constant: 100),
             topBtnsSV.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor, constant: 16),
             topBtnsSV.trailingAnchor.constraint(equalTo: goodsImage.trailingAnchor, constant: -16),
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
            [nameLabel.topAnchor.constraint(equalTo: goodsImage.bottomAnchor, constant: 20),
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
        
        
        
        
        xButton.addTarget(self, action: #selector(xButtonTppd), for: .touchUpInside)
        likeButton.addTarget(self, action: #selector(likeButtonTppd), for: .touchUpInside)
        plusBtn.addTarget(self, action: #selector(summ), for: .touchUpInside)
    }
    
    @objc private func xButtonTppd() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    var heartImage = UIImage(systemName: "heart.fill")
    
    @objc private func likeButtonTppd() {
        if likeButton.tintColor == .black {
            likeButton.imageView?.image = heartImage        // здесь хотела поменять image на другой чтобы полностью красился, но                                                что то не получилось обратиться к image кнопки, только через                                                      imageView, наверное из за этого не менятся
            likeButton.tintColor = .red
        } else {
            likeButton.tintColor = .black
        }
        
    }
    
    
    
    var count = 1
    var count2 = 2
    
    @objc private func summ() {
        var price = detail.price
        count += 1
        price = price * count
        countLabel.text = "\(count)"
        priceLabel.text = "$\(price)"
    }
    
    
    private func setDetailData() {
        roomTypeValue.text = detail.roomType
        colorValue.text = detail.color
        materialValue.text = detail.material
        dimensionsValue.text = detail.dimensions
        weightValue.text = detail.weight
        priceLabel.text = detail.priceLbl
    }

}
