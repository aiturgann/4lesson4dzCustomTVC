//
//  ViewController.swift
//  4lesson4dzCustomTVC
//
//  Created by Aiturgan Kurmanbekova on 22/2/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    private var tableView = UITableView()
    
    var goodss: [Goods] = [Goods(image: UIImage(named: "furniture")!,
                                         name: "Furniture",
                                         label: "785 Items",
                                         price: "$230",
                                         roomType: "Living Room",
                                         color: "Gray",
                                         material: "Textile, Velvet, Cotton",
                                         dimensions: "55.6 x 71.5 x 67.4 inches",
                                         weight: "30.3 Pounds"),
          Goods(image: UIImage(named: "kitchenware")!,
          name: "Kitchenware",
          label: "645 Items",
          price: "$760",
          roomType: "Kitchen",
          color: "White",
          material: "Wool, Metal, Glass",
          dimensions: "95.6 x 131.5 x 47.4 inches",
          weight: "120.3 Pounds"),
                                   Goods(image: UIImage(named: "table")!,
                                         name: "Reading Table",
                                         label: "Inventory",
                                         price: "$89",
                                         roomType: "Office",
                                         color: "Black",
                                         material: "Plastik",
                                         dimensions: "5.6 x 3.5 x 7.4 inches",
                                         weight: "3.3 Pounds")]
    
    
            

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        NSLayoutConstraint.activate(
            [tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
             tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
             tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
            ])
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        goodss.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.qwerty(goods: goodss[indexPath.row])
        return cell
    }
    

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SecondViewController()
        vc.image.image = goodss[indexPath.row].image
        vc.nameLabel.text = goodss[indexPath.row].name
        vc.priceLabel.text = goodss[indexPath.row].price
        vc.roomTypeValue.text = goodss[indexPath.row].roomType
        vc.colorValue.text = goodss[indexPath.row].color
        vc.materialValue.text = goodss[indexPath.row].material
        vc.dimensionsValue.text = goodss[indexPath.row].dimensions
        vc.weightValue.text = goodss[indexPath.row].weight
        navigationController?.pushViewController(vc, animated: true)
    }
}

