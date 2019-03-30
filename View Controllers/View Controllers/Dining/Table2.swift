//
//  Table2.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class Table2: UITableViewController {
    
//    @IBAction func close(_ sender: Any) {
//        dismiss(animated: true, completion: nil)
//    }
//
//    var foodArray:[Food] = [Food]()
//
//    func setStatusBarBackgroundColor(color: UIColor) {
//
//        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
//        statusBar.backgroundColor = Colors.test
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setStatusBarBackgroundColor(color: Colors.test)
//
//
//        let food1 = Food(imageName: "stewTest.jpg", description: "Pilav", moreInfo: "Preheat a grilled over medium-high heat to 425 degrees. Pound chicken to an even thickness using the flat side of a meat mallet. Brush chicken breasts lightly with about 1 Tbsp olive oil, season with salt and pepper. Brush grilled grates lightly with oil, and grill chicken, rotating once halfway through cooking, until it registers 165 in center on an instant read thermometer, about 6 - 8 minutes. Transfer to a plate, cover with foil, let rest 10 minutes then dice into cubes. Transfer chicken to a bowl, pour vinaigrette over chicken and toss to evenly coat.", price: "10,000")
//
//        let food2 = Food(imageName: "stewTest.jpg", description: "Meatballs with spices", moreInfo: "Cook pasta according to package directions. Drain and cool.Whisk together oil, juice, mayonnaise and Greek seasoning in a large bowl. Add cooked pasta, tomatoes, feta cheese and basil. Toss to coat.Cover and refrigerate 8 hours before serving.", price: "10,000")
//
//        let food3 = Food(imageName: "stewTest.jpg", description: "Chicken Kiev", moreInfo: "Preheat your oven to 350 degrees. Into your stand mixer or large mixing bowl place 2 C flour, 1 tsp baking soda, 1 tsp baking powder, 1 tsp salt and 1/2 tsp cinnamon. Toss them together with a fork to combine. Grab 2 1/2 cups Old Fashioned Oats and add them to the mixing bowl. Add 1 1/2 C brown sugar and toss everything together to mix. Melt 1 1/4 C butter and pour it into the bowl. Mix for one minute.  Add 2 eggs and 1 Tb vanilla. Mix until the dough has combined. Add the chocolate chips. Mix the chips in. Spray a 9x13 pan with cooking spray and press the dough into it.Bake for 20 minutes.", price: "10,000")
//
//        let food4 = Food(imageName: "stewTest.jpg", description: "Barbeque", moreInfo: "Place the cucumber, black beans, corn, red pepper, cherry tomatoes, and chopped cilantro in a bowl. Squeeze the fresh juice from the lime onto the salad, and stir well.Mix in the avocado, season with salt and pepper, and enjoy.", price: "11,000")
//
//        let food5 = Food(imageName: "stewTest.jpg", description: "Brigole with spices", moreInfo: "Preheat the oven to 350 degrees F. For the crust: Line a 9-by-13-inch rectangular baking pan with foil and spray with cooking spray. Place the vanilla wafers and pecans into the bowl of a food processor and pulse until the mixture becomes crumbs. Add the melted butter and pulse again until combined. For the filling: Beat the cream cheese, sugar and vanilla together in a medium bowl with an electric mixer until smooth. Add the eggs one at a time, beating after each addition. Add the sour cream and mix again. Pour the filling into the crust, smooth the top and bake for 50 minutes. Turn off the oven, open the oven door and allow the pan to sit in the open oven for 15 minutes.", price: "11,000")
//
//        let food6 = Food(imageName: "stewTest.jpg", description: "Norin", moreInfo: "Preheat oven to 375 degrees. Brush 2 baking sheets with oil; set aside. In a wide, shallow bowl, whisk together eggs and 2 tablespoons water. In another bowl, combine breadcrumbs, 3/4 cup Parmesan, oregano, and basil; season with salt pepper. Dip eggplant slices in egg mixture, letting excess drip off, then dredge in breadcrumb mixture, coating well; place on baking sheets. Bake until golden brown on bottom, 20 to 25 min. Turn slices; continue baking until browned on other side, 20 to 25 minutes more. Remove from oven; raise oven heat to 400 degrees. Spread 2 cups sauce in a 9-by-13-inch baking dish. Arrange half the eggplant in dish; cover with 2 cups sauce, then 1/2 cup mozzarella. Repeat with remaining eggplant, sauce, and mozzarella. Bake until sauce is bubbling and cheese is melted, 15 to 20 minutes.", price: "11,000")
//
//        let food7 = Food(imageName: "stewTest.jpg", description: "Stew with spices", moreInfo: "Preheat the oven to 400 degrees F.  Heat the chicken, salsa, beans, 1/2 cup of the broth and the chili powder in a 10-inch cast-iron skillet over medium heat, stirring, until simmering. Stir in the scallions and remove from the heat.  Meanwhile, combine the cornmeal with the remaining 1 cup broth and 1 cup water in a medium pan. Bring to a simmer over medium heat, stirring, until very thick, 5 to 7 minutes. Remove from the heat and stir in the cheese and butter. Season with 1/4 teaspoon salt and 1/4 teaspoon pepper.  Spread the cornmeal mixture over the filling and bake until cooked through, about 30 minutes. Let stand for 15 minutes. Serve with sour cream.", price: "11,000")
//
//        let food8 = Food(imageName: "stewTest.jpg", description: "Chicken with spices", moreInfo: "Preheat the oven to 400 degrees F.  Heat the chicken, salsa, beans, 1/2 cup of the broth and the chili powder in a 10-inch cast-iron skillet over medium heat, stirring, until simmering. Stir in the scallions and remove from the heat.  Meanwhile, combine the cornmeal with the remaining 1 cup broth and 1 cup water in a medium pan. Bring to a simmer over medium heat, stirring, until very thick, 5 to 7 minutes. Remove from the heat and stir in the cheese and butter. Season with 1/4 teaspoon salt and 1/4 teaspoon pepper.  Spread the cornmeal mixture over the filling and bake until cooked through, about 30 minutes. Let stand for 15 minutes. Serve with sour cream.", price: "11,000")
//
//        let food9 = Food(imageName: "stewTest.jpg", description: "Chicken with potatoes", moreInfo: "Preheat the oven to 400 degrees F.  Heat the chicken, salsa, beans, 1/2 cup of the broth and the chili powder in a 10-inch cast-iron skillet over medium heat, stirring, until simmering. Stir in the scallions and remove from the heat.  Meanwhile, combine the cornmeal with the remaining 1 cup broth and 1 cup water in a medium pan. Bring to a simmer over medium heat, stirring, until very thick, 5 to 7 minutes. Remove from the heat and stir in the cheese and butter. Season with 1/4 teaspoon salt and 1/4 teaspoon pepper.  Spread the cornmeal mixture over the filling and bake until cooked through, about 30 minutes. Let stand for 15 minutes. Serve with sour cream.", price: "11,000")
//
//        let food10 = Food(imageName: "stewTest.jpg", description: "Baked tibia", moreInfo: "Preheat the oven to 400 degrees F.  Heat the chicken, salsa, beans, 1/2 cup of the broth and the chili powder in a 10-inch cast-iron skillet over medium heat, stirring, until simmering. Stir in the scallions and remove from the heat.  Meanwhile, combine the cornmeal with the remaining 1 cup broth and 1 cup water in a medium pan. Bring to a simmer over medium heat, stirring, until very thick, 5 to 7 minutes. Remove from the heat and stir in the cheese and butter. Season with 1/4 teaspoon salt and 1/4 teaspoon pepper.  Spread the cornmeal mixture over the filling and bake until cooked through, about 30 minutes. Let stand for 15 minutes. Serve with sour cream.", price: "13,000")
//
//
//
//        foodArray.append(food1)
//        foodArray.append(food2)
//        foodArray.append(food3)
//        foodArray.append(food4)
//        foodArray.append(food5)
//        foodArray.append(food6)
//        foodArray.append(food7)
//        foodArray.append(food8)
//        foodArray.append(food9)
//        foodArray.append(food10)
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return foodArray.count
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! myCell
//
//        let foodItem = foodArray[indexPath.row]
//
//        cell.myImageView.image = UIImage(named: foodItem.imageName)
//        cell.myLabel.text = foodItem.description
//        cell.price.text = foodItem.price
//        return cell
//    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let foodSelected = foodArray[indexPath.row]
//        let detailVC: Detail = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! Detail
//
//        detailVC.imageDetail = foodSelected.imageName
//        detailVC.descriptionLabel = foodSelected.description
//        detailVC.moreInfoDetail = foodSelected.moreInfo
//
//        self.present(detailVC, animated: true, completion: nil)
//
//    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var foodArray:[Food] = [Food]()
    
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
