//
//  ExamsViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/4/19.
//

import UIKit

class ExamsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
// MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 6
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ExamsCell
        if indexPath.row == 0{
            cell.title.text = "Creative Engineering Design"
            cell.start.text = "9:00"
            cell.end.text = "12:00"
            cell.room.text = "B202"
        }
   tableView.rowHeight = 70.0
        return cell
    }
    
    // MARK: - Headers
    
    let myTitles = ["March 17", "March 18", "March 19", "March 20", "March 21", "March 22"]
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header = myTitles[section]
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return  60.0
    }

    
}
