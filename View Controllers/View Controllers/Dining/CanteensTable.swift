//
//  CanteensTable.swift
//  IUT Mobile
//
//  Created by Zafar on 2/18/19.
//

import UIKit

class CanteensTable: UITableViewController {
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.alizarin
        
    }
    
    let canteens = ["Floor 4A", "Floor 3A", "Floor 3B"]
    
    var canteenImg: [UIImage] = [
        UIImage(named: "4a.jpg")!,
        UIImage(named: "3a.jpg")!,
        UIImage(named: "3b.jpg")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.alizarin)
        setStatusBarStyle(.lightContent)
    }
   
    
  
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return canteens.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Canteens", for: indexPath) as! canCell
       
        
        cell.canteenImage.image = canteenImg[indexPath.row]
        cell.canteenLabel.text = canteens[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "floor4a") as! Table1
            
            present(vc, animated: true, completion: nil)
        }
        if indexPath.row == 1{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "floor3a") as! Table2
            
            present(vc, animated: true, completion: nil)
        }
        if indexPath.row == 2{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "floor3b") as! Table3
            
            present(vc, animated: true, completion: nil)
        }
    }
    
}

