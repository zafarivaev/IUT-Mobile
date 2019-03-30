//
//  Table2.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class Table2: UITableViewController {
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var foodArray:[Food] = [Food]()
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.alizarin
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.alizarin)
        setStatusBarStyle(.lightContent)
        
        let food1 = Food(imageName: "roll.png", description: "A roll", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 1,500", price: "1,500")
        
        let food2 = Food(imageName: "sausage.jpeg", description: "Sausage rolls", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 2,000", price: "2,000")
        
        let food3 = Food(imageName: "mini.jpeg", description: "Mini Pizza", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 4,000", price: "4,000")
        
        let food4 = Food(imageName: "salad.jpeg", description: "Salad", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 2,000", price: "2,000")
        
        let food5 = Food(imageName: "achichuk.jpeg", description: "Salad \"Achichuk\"", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 3,000", price: "3,000")
        
        let food6 = Food(imageName: "olivye.jpeg", description: "Salad \"Olivye\"", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 5,000", price: "5,000")
        
        let food7 = Food(imageName: "noodle.png", description: "Chicken noodle soup", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 7,000", price: "7,000")
        
        let food8 = Food(imageName: "mastava.jpeg", description: "Soup \"Mastava\"", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 7,000", price: "7,000")
        
        let food9 = Food(imageName: "bef31254.jpeg", description: "Beaf/Chicken Steak", moreInfo: "Side dish included. *Photo taken from the Internet\n\n\nPrice: 10,000", price: "10,000")
        
        let food10 = Food(imageName: "laghman.jpeg", description: "Fried Laghman", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 10,000", price: "10,000")
        
        let food11 = Food(imageName: "stew.jpeg", description: "Stew", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 10,000", price: "10,000")
        
        let food12 = Food(imageName: "kiev.jpeg", description: "Chicken Kiev", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 11,000", price: "11,000")
        
        let food13 = Food(imageName: "plovv.jpeg", description: "Pilav", moreInfo: "*Photo taken from the Internet\n\n\nPrice: 11,000", price: "11,000")
        
        foodArray.append(food1)
        foodArray.append(food2)
        foodArray.append(food3)
        foodArray.append(food4)
        foodArray.append(food5)
        foodArray.append(food6)
        foodArray.append(food7)
        foodArray.append(food8)
        foodArray.append(food9)
        foodArray.append(food10)
        foodArray.append(food11)
        foodArray.append(food12)
        foodArray.append(food13)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myCell
        
        let foodItem = foodArray[indexPath.row]
        
        cell.myImageView.image = UIImage(named: foodItem.imageName)
        cell.myLabel.text = foodItem.description
        cell.price.text = foodItem.price
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let foodSelected = foodArray[indexPath.row]
        let detailVC: Detail = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! Detail
        
        detailVC.imageDetail = foodSelected.imageName
        detailVC.descriptionLabel = foodSelected.description
        detailVC.moreInfoDetail = foodSelected.moreInfo
        
        self.present(detailVC, animated: true, completion: nil)
        
    }
    
}
