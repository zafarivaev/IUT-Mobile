//
//  ExamsViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/4/19.
//

import UIKit

class ExamsViewController: UITableViewController {
    
    let confetti = UIImageView()
    
    @IBOutlet weak var groupLabel: UILabel!
    
    //Move confetti
    func moveConfetti(){
        UIView.animate(withDuration: 4, delay: 0, options: .curveEaseOut, animations: {
            self.confetti.isHidden = false
            self.confetti.transform = CGAffineTransform(translationX: 0, y:  (2 * self.view.frame.size.height))
            
        }, completion: { finished in
            self.confetti.transform = CGAffineTransform(translationX: 0, y: 0)
            self.confetti.isHidden = true
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarStyle(.lightContent)
        
        confetti.isHidden = true
        confetti.frame = CGRect(x: 0, y: -view.frame.size.height, width: view.frame.size.width, height: view.frame.size.height)
        confetti.image = UIImage(named: "confetti")
        confetti.contentMode = UIView.ContentMode.scaleAspectFill
        confetti.layer.zPosition = .greatestFiniteMagnitude
        view.addSubview(confetti)
        groupLabel.text = UserDefaults.standard.string(forKey: "chosenGroup")
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        view.addSubview(confetti)
//    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
// MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-18"{
        return 5
        }
        else {
            return 5
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-18"{
            
        if section == 0{
        return 1
        } else if section == 1{
            return 1
        }
        else if section == 2{
            return 2
        } else if section == 3{
            return 1
        } else if section == 4{
            return 2
        }
        else {
        return 1
        }
            
        }
            
        else {
        return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ExamsCell
        
        if indexPath.section == 0{
if indexPath.row == 0{
cell.title.text = "OOP"
cell.start.text = "9:30"
cell.end.text = "11:00"
cell.room.text = "Libr 4"
}
        } else if indexPath.section == 1{
if indexPath.row == 0{
cell.title.text = "Free day!"
cell.start.text = "N/A"
cell.end.text = "N/A"
cell.room.text = "N/A"
}
        } else if indexPath.section == 2{
if indexPath.row == 0 {
cell.title.text = "Physics"
cell.start.text = "9:30"
cell.end.text = "11:00"
cell.room.text = "B304(C)"
} else if indexPath.row == 1{
cell.title.text = "AE"
cell.start.text = "15:30"
cell.end.text = "17:00"
cell.room.text = "B304(B)"
}
        } else if indexPath.section == 3{
            if indexPath.row == 0 {
                cell.title.text = "Free day!"
                cell.start.text = "N/A"
                cell.end.text = "N/A"
                cell.room.text = "N/A"
            }
        } else if indexPath.section == 4{
            if indexPath.row == 0 {
                cell.title.text = "Calculus"
                cell.start.text = "9:30"
                cell.end.text = "11:00"
                cell.room.text = "B304(C)"
            } else if indexPath.row == 1{
                cell.title.text = "TWD"
                cell.start.text = "15:30"
                cell.end.text = "17:00"
                cell.room.text = "B304(B)"
            }
        }
        
        //Setting colors for elements in each section
        if indexPath.section == 0 {
            cell.title.textColor = Colors.inhaColor
            cell.start.textColor = Colors.inhaColor
            cell.end.textColor = Colors.inhaColor
            cell.room.textColor = Colors.inhaColor
        } else if indexPath.section == 1 {
            cell.title.textColor = Colors.seagreen
            cell.start.textColor = Colors.seagreen
            cell.end.textColor = Colors.seagreen
            cell.room.textColor = Colors.seagreen
        } else if indexPath.section == 2 {
            cell.title.textColor = Colors.oliveDrab
            cell.start.textColor = Colors.oliveDrab
            cell.end.textColor = Colors.oliveDrab
            cell.room.textColor = Colors.oliveDrab
        } else if indexPath.section == 3 {
            cell.title.textColor = Colors.alizarin
            cell.start.textColor = Colors.alizarin
            cell.end.textColor = Colors.alizarin
            cell.room.textColor = Colors.alizarin
        } else if indexPath.section == 4 {
            cell.title.textColor = Colors.teal
            cell.start.textColor = Colors.teal
            cell.end.textColor = Colors.teal
            cell.room.textColor = Colors.teal
        }
        
   tableView.rowHeight = 70.0
    cell.verticalBar.backgroundColor = myTitles[indexPath.section].color
        return cell
    }
    
    // MARK: - Headers
    
    let myTitles: [(name: String, color: UIColor)] = [("March 25 (Monday)", Colors.inhaColor), ("March 26 (Tuesday)", Colors.seagreen), ("March 27 (Wednesday)", Colors.oliveDrab), ("March 28 (Thursday)", Colors.alizarin), ("March 29 (Friday)", Colors.teal)]
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveConfetti()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header = myTitles[section].name
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = myTitles[section].color
    }

    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return  60.0
    }

    
}
