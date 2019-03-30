//
//  Table1.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class Table1: UITableViewController {
    
    
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var foodArray:[Food] = [Food]()
    var priceArray:[Food] = [Food]()
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.test
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.test)
        
        
        let food1 = Food(imageName: "pilav.jpg", description: "Pilav", moreInfo: "Meat, onions, carrot, rise, oil, spice.\n\n\nPrice: 10,000", price: "10,000")
        
        let food2 = Food(imageName: "Cutlet with spices.jpg", description: "Cutlet with spices", moreInfo: "A meat ball; You can choose up to three species.\n\n\nPrice: 10,000", price: "10,000")
        
        let food3 = Food(imageName: "Chicken Kiev.jpg", description: "Chicken Kiev", moreInfo: "A Chicken meat ball made by Kiev recepie; You can choose up to three species.\n\n\nPrice: 10,000", price: "10,000")
        
        let food4 = Food(imageName: "Barbeque.jpeg", description: "Barbeque", moreInfo: "Meat peaces with some species. You can choose up to three species.\n\n\nPrice: 11,000", price: "11,000")
        
        let food5 = Food(imageName: "Brizol.jpeg", description: "Brigole with spices", moreInfo: "Mutton/Chicken chop with species. You can choose up to three species.\n\n\nPrice: 11,000", price: "11,000")
        
        let food6 = Food(imageName: "norin.jpg", description: "Norin", moreInfo: "Meat, noodles, spices, kazi.\n\n\nPrice: 11,000", price: "11,000")
        
        let food7 = Food(imageName: "курица-с-грибами.jpg", description: "Chicken with mushroom and species", moreInfo: "Square cut chicken with mushroom and rice.\n\n\nPrice: 11,000", price: "11,000")
        
        let food8 = Food(imageName: "chickenWITHpotatoes.jpg", description: "Chicken with potatoes", moreInfo: "Roasted chicken with french fries.\n\n\nPrice: 11,000", price: "11,000")
        
        let food9 = Food(imageName: "tibia.jpg", description: "Baked tibia", moreInfo: "Baked tibia with french fries.\n\n\nPrice: 13,000", price: "13,000")
        
        let food10 = Food(imageName: "riceFrenchfries.jpg", description: "Side dish", moreInfo: "Rice with french fries\n\n\nPrice: 7,000", price: "7,000")
        
        let food11 = Food(imageName: "riceMashBuckwheat.jpg", description: "Side dish", moreInfo: "Rice, Mash, Buckwheat\n\n\nPrice: 7,000", price: "7,000")
        
        let food12 = Food(imageName: "buckwheatMash.jpg", description: "Side dish", moreInfo: "Buckwheat, Mash.\n\n\nPrice: 7,000", price: "7,000")
        
        
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
