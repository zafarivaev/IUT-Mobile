//
//  CategoryViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/5/19.
//

import UIKit
import RealmSwift
import ChameleonFramework

class CategoryViewController: UITableViewController {
    
    let realm = try! Realm()
    var categories: Results<Category>?
 
    
    // Should've included initial categories and removed the swipe cell methods. The categories will be predefined.

    
    func setStatusBarBackgroundColor(color: UIColor) {
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    func originalCategory(category: Category, color: Category){
        do{
            try self.realm.write {
                category.color = color.color
            }
        } catch{}
    }
  
    func isAppAlreadyLaunchedOnce()->Bool{
        let defaults = UserDefaults.standard
        
        if let isAppAlreadyLaunchedOnce = defaults.string(forKey: "isAppAlreadyLaunchedOnce"){
            print("App already launched : \(isAppAlreadyLaunchedOnce)")
            
            return true
        }else{
            defaults.set(true, forKey: "isAppAlreadyLaunchedOnce")
            print("App launched first time")
            return false
        }
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80.0
        loadItems()
        tableView.separatorStyle = .none
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        
        
        if !isAppAlreadyLaunchedOnce(){
            let category1 = Category()
            category1.name = "ASSIGNMENTS 📝"
            let color1 = Category()
            color1.color =  UIColor.randomFlat.hexValue()
            originalCategory(category: category1, color: color1)
            self.save(category: category1)
            
            
            let category2 = Category()
            category2.name = "QUIZZES 🧠"
            let color2 = Category()
            color2.color =  UIColor.randomFlat.hexValue()
            originalCategory(category: category2, color: color2)
            self.save(category: category2)
            
            let category3 = Category()
            category3.name = "EXAMS ✍️"
            let color3 = Category()
            color3.color =  UIColor.randomFlat.hexValue()
            originalCategory(category: category3, color: color3)
            self.save(category: category3)
            
            let category4 = Category()
            category4.name = "ESSAYS 📄"
            let color4 = Category()
            color4.color =  UIColor.randomFlat.hexValue()
            originalCategory(category: category4, color: color4)
            self.save(category: category4)
            
            let category5 = Category()
            category5.name = "FINANCIAL 💵"
            let color5 = Category()
            color5.color =  UIColor.randomFlat.hexValue()
            originalCategory(category: category5, color: color5)
            self.save(category: category5)
            
            let category6 = Category()
            category6.name = "OTHERS 🔖"
            let color6 = Category()
            color6.color =  UIColor.randomFlat.hexValue()
            originalCategory(category: category6, color: color6)
            self.save(category: category6)
        }
        
    }
    
 
    override func viewWillAppear(_ animated: Bool) {
        setStatusBarBackgroundColor(color: Colors.inhaColor)
    }
    
//    @IBAction func addButtonPressed(_ sender: Any) {
//
//        var textField = UITextField()
//
//        let alert = UIAlertController(title: "Add new category", message: "", preferredStyle: .alert)
//
//        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
//            // what will happen when pressed
//
//            let newCategory = Category()
//            newCategory.name = textField.text!
//
//            let newColor = Category()
//            newColor.color = UIColor.randomFlat.hexValue()
//
//            do{
//                try self.realm.write {
//                    newCategory.color = newColor.color
//                }
//            } catch{}
//
//            self.save(category: newCategory)
//        }
//
//        alert.addTextField { (alertTextField) in
//            alertTextField.placeholder = "Create new Category"
//            textField = alertTextField
//        }
//
//        alert.addAction(action)
//
//        present(alert, animated: true, completion: nil)
//
//    }
    
    //MARK: - TableView Datasource Methods
    func save(category: Category){
        do{
            try realm.write {
                realm.add(category)
            }
        } catch {
            print(error)
        }
        self.tableView.reloadData()
    }
    
    
    func loadItems() {
        
        categories = realm.objects(Category.self)
        tableView.reloadData()
        
    }
    
//    //MARK: - Delete Data From Swipe
//
//    override func updateModel(at indexPath: IndexPath) {
//
//        super.updateModel(at: indexPath)
//
//        if let categoryForDeletion = self.categories?[indexPath.row] {
//            do{
//                try self.realm.write {
//                    self.realm.delete(categoryForDeletion)
//                }
//            } catch {
//                print(error)
//            }
//        }
//    }
//
    
    
    //MARK: - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories?.count ?? 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if let category = categories?[indexPath.row]{
            
            cell.textLabel?.text = category.name
            
            guard let categoryColor = UIColor(hexString: category.color) else {fatalError()}
            
            cell.backgroundColor = categoryColor
            cell.textLabel?.textColor = ContrastColorOf(categoryColor, returnFlat: true)
            
            
            
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "goToItems", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ToDoListViewController
        if let indexPath = tableView.indexPathForSelectedRow{
            destinationVC.selectedCategory = categories?[indexPath.row]
        }
    }
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}

