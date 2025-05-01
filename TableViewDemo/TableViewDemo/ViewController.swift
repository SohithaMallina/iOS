//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Sohitha Mallina on 4/8/25.
//

import UIKit

class Product{
    var productName:String
    var productDescription:String
    
    init(prodName: String, prodDesc: String){
        self.productName = prodName
        self.productDescription = prodDesc
    }
}//end of prod class
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return productarray count
        return productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        let cell = TableViewOL.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath)
        //populate the cell with data
        cell.textLabel?.text = productArray[indexPath.row].productName
        //return the cell
        return cell
    }
    

    @IBOutlet weak var TableViewOL: UITableView!
    var productArray = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewOL.dataSource = self
        TableViewOL.delegate = self
        
        let product1 = Product(prodName: "iPhone16", prodDesc: "This is a new iPhone 13")
        productArray.append(product1)
        let product2 = Product(prodName: "MacBook Pro", prodDesc: "This is a new MacBook Pro")
        productArray.append(product2)
        let product3 = Product(prodName: "Airpods Pro", prodDesc: "This is a new Airpods Pro")
        productArray.append(product3)
        let product4 = Product(prodName: "Apple Watch Series 8", prodDesc: "This is a new Apple Watch Series 8")
        productArray.append(product4)
        let product5 = Product(prodName: "iPad Pro 11-inch", prodDesc: "This is a new iPad Pro 11-inch")
        productArray.append(product5)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ProductsSegue" {
            var destination = segue.destination as! ResultViewController
            destination.product = productArray[(TableViewOL.indexPathForSelectedRow?.row)!]
        }
    }


}

