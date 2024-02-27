//
//  Label.swift
//  4lesson4dzCustomTVC
//
//  Created by Aiturgan Kurmanbekova on 22/2/24.
//

import UIKit

struct Goods {
    var image: UIImage
    var name: String
    var label: String
    var details: Details
}

struct Details {
    var roomType: String
    var color: String
    var material: String
    var dimensions: String
    var weight: String
    var priceLbl: String
    var price: Int
}
