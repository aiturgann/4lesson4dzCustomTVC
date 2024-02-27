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
                                 details: Details(roomType: "Living Room",
                                                  color: "Gray",
                                                  material: "Textile, Velvet, Cotton",
                                                  dimensions: "55.6 x 71.5 x 67.4 inches",
                                                  weight: "30.3 Pounds", 
                                                  priceLbl: "$230",
                                                  price: 230)),
                           
                           Goods(image: UIImage(named: "kitchenware")!,
                                 name: "Kitchenware",
                                 label: "645 Items",
                                 details: Details(roomType: "Kitchen",
                                                  color: "White",
                                                  material: "Wool, Metal, Glass",
                                                  dimensions: "95.6 x 131.5 x 47.4 inches",
                                                  weight: "120.3 Pounds", 
                                                  priceLbl: "$590",
                                                  price: 590)),
                           
                           Goods(image: UIImage(named: "table")!,
                                 name: "Reading Table",
                                 label: "Inventory",
                                 details: Details(roomType: "Office",
                                                  color: "Black",
                                                  material: "Plastik",
                                                  dimensions: "5.6 x 3.5 x 7.4 inches",
                                                  weight: "3.3 Pounds", 
                                                  priceLbl: "$39",
                                                  price: 39))]
    
            

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
        cell.setData(goods: goodss[indexPath.row])
        return cell
    }
    

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = goodss[indexPath.row].details
        let vc = SecondViewController(detailInit: detail)
        
        vc.goodsImage.image = goodss[indexPath.row].image
        vc.nameLabel.text = goodss[indexPath.row].name

        navigationController?.pushViewController(vc, animated: true)
    }
}

