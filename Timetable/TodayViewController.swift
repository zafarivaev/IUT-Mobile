import UIKit
import NotificationCenter


class TodayViewController: UITableViewController, NCWidgetProviding {
    
    let confetti = UIImageView()
    var group = String()
    let day = Date().dayOfWeek()!
    
    @IBOutlet weak var groupLabel: UILabel!
    

    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) ->
        Void)!) {
        if let userDefaults = UserDefaults.init(suiteName: "group.com.zafar.timetable")?.value(forKey: "chosenGroup") {
            group = userDefaults as! String
                completionHandler(NCUpdateResult.newData)
      
          
        }
        completionHandler(NCUpdateResult.newData)
    }
    
    func widgetMarginInsetsForProposedMarginInsets
        (defaultMarginInsets: UIEdgeInsets) -> (UIEdgeInsets) {
        return UIEdgeInsets.zero
    }
    
    func widgetActiveDisplayModeDidChange(_ activeDisplayMode: NCWidgetDisplayMode, withMaximumSize maxSize: CGSize) {
        if (activeDisplayMode == NCWidgetDisplayMode.compact) {
            self.preferredContentSize = maxSize
            
        } else {
            self.preferredContentSize = CGSize(width: maxSize.width, height: 300)
            
        }
    }
    
    
    
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
        print(day)
        self.extensionContext?.widgetLargestAvailableDisplayMode = .expanded
        print(group)
        if let userDefaults = UserDefaults.init(suiteName: "group.com.zafar.timetable")?.value(forKey: "chosenGroup") {
            group = userDefaults as! String
            print(group)
        }
        
        
        confetti.isHidden = true
        confetti.frame = CGRect(x: 0, y: -view.frame.size.height, width: view.frame.size.width, height: view.frame.size.height)
        confetti.image = UIImage(named: "confetti")
        confetti.contentMode = UIView.ContentMode.scaleAspectFill
        confetti.layer.zPosition = .greatestFiniteMagnitude
        view.addSubview(confetti)
      //  groupLabel.text = group
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: - Table view data source
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        
      return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if group == "CIE18-1"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 1
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-2"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-3"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 1
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-4"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-5"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-6"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-7"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-8"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 1
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CIE18-9"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-10"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-11"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-12"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-13"{
            if day == "Monday"{
                return 1
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 1
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CIE18-14"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 1
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-15"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 1
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-16"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 1
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
        else if group == "CIE18-17"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 4
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-18"{
            if day == "Monday"{
                return 1
            } else if day == "Tuesday"{
                return 1
            } else if day == "Wednesday"{
                return 5
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-19"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 1
            } else if day == "Wednesday"{
                return 5
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-20"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 5
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-21"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-22"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-23"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-24"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 1
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else if group == "CIE18-25"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-26"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-27"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-28"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else if group == "SOL18-1"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 1
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "SOL18-2"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "SOL18-3"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
            
        else if group == "SOL18-4"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 1
            } else {
                return 1
            }}
        
        else if group == "ICE17-1"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 5
            } else if day == "Wednesday"{
                return 4
            } else if day == "Thursday"{
                return 5
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            //
        else  if group == "ICE17-2"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 2
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 6
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CSE17-1"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CSE17-2"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CSE17-3"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 5
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CSE17-4"{
            if day == "Monday"{
                return 5
            } else if day == "Tuesday"{
                return 5
            } else if day == "Wednesday"{
                return 4
            } else if day == "Thursday"{
                return 5
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CSE17-5"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 1
            } else if day == "Thursday"{
                return 6
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CSE17-6"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 6
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CSE17-7"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 4
            } else if day == "Thursday"{
                return 2
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CSE17-8"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 4
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CSE17-9"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 4
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CSE17-10"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CSE17-11"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 5
            } else if day == "Friday"{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CSE17-12"{
            if day == "Monday"{
                return 5
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 4
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CSE17-13"{
            if day == "Monday"{
                return 4
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 6
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "SOL17-1"{
            if day == "Monday"{
                return 1
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "SOL17-2"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 4
            } else if day == "Wednesday"{
                return 2
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "SOL17-3"{
            if day == "Monday"{
                return 3
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "SOL17-4"{
            if day == "Monday"{
                return 2
            } else if day == "Tuesday"{
                return 3
            } else if day == "Wednesday"{
                return 3
            } else if day == "Thursday"{
                return 3
            } else if day == "Friday"{
                return 4
            } else {
                return 1
            }}
            
        else {
            return 1
        }}
    
    
    //MARK: - Setting info for widget
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WidgetCell", for: indexPath) as! WidgetCell
        
        if group == "CIE18-1"{
            
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                } else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                } else if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "PE1-1"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                else if indexPath.row == 1{
                    cell.title.text = "TWD1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }else if indexPath.row == 2{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                    
                }} else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                } else if indexPath.row == 1{
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if group == "CIE18-2"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                } else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                } else if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "PE1-1"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                else if indexPath.row == 1{
                    cell.title.text = "TWD1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }else if indexPath.row == 2{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                    
                }} else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                } else if indexPath.row == 1{
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if group == "CIE18-3"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                } else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                } else if indexPath.row == 2{
                    cell.title.text = "AE2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }else if indexPath.row == 3{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2{
                    cell.title.text = "PE1-1"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            } else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                } else if indexPath.row == 1{
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if group == "CIE18-4"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }else if indexPath.row == 1{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE1-3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "201(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                else if indexPath.row == 2{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B102(50-Comp)"
                    cell.professor.text = ""
                }
            }
        }
            
        else if group == "CIE18-5"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }else if indexPath.row == 1{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    cell.professor.text = "Dr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE1-3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "201(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                else if indexPath.row == 2{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B102(50-Comp)"
                    cell.professor.text = ""
                }
            }
        }
            
        else if group == "CIE18-6"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                } else if indexPath.row == 1{
                    cell.title.text = "AE2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2{
                    cell.title.text = "TWD3"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE1-3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "210(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-2"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                else if indexPath.row == 2{
                    cell.title.text = "OOP2LAB2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B102(50-Comp)"
                    cell.professor.text = ""
                }
            }
        }
            
        else if group == "CIE18-7"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD3"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-1"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "210(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-2"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                else if indexPath.row == 2{
                    cell.title.text = "OOP2LAB2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B102(50-Comp)"
                    cell.professor.text = ""
                }
            }
        }
            
        else if group == "CIE18-8"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "613(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-1"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "210(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-2"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                }
                cell.professor.text = "Pr. Abhijit Tarawade"
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                else if indexPath.row == 2{
                    cell.title.text = "OOP2LAB2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B102(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 3{
                    cell.title.text = "TWD4"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if group == "CIE18-9"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-1"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD4"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if group == "CIE18-10"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "PE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD4"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if group == "CIE18-11"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-5"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "PE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD5"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if group == "CIE18-12"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-5"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "PE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 0 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD5"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if group == "CIE18-13"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 3{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-5"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "11:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED2"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
                if indexPath.row == 3{
                    cell.title.text = "TWD5"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if group == "CIE18-14"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
                if indexPath.row == 2{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "11:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD6"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-6"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 3{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
            }
        }
            
        else if group == "CIE18-15"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
                if indexPath.row == 2{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "TWD6"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-6"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
            }
        }
            
        else if group == "CIE18-16"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
                if indexPath.row == 2{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B103(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 3 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "TWD7"
                    cell.start.text = "10:00"
                    cell.end.text = "12:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-7"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH4"
                    cell.start.text = "10:30"
                    cell.end.text = "11:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
                if indexPath.row == 3{
                    cell.title.text = "AE2-7"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B207(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
        }
            
        else if group == "CIE18-17"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-4"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "514(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2 {
                    cell.title.text = "CH4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "TWD7"
                    cell.start.text = "10:00"
                    cell.end.text = "12:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-7"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CED3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-7"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B207(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
        }
            
        else if group == "CIE18-18"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB5"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "514(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                    cell.professor.text = "Curator"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 4{
                    cell.title.text = "CED4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD8"
                    cell.start.text = "12:00"
                    cell.end.text = "14:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "AE2-8"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-5"
                    cell.start.text = "9:00"
                    cell.end.text = "11:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-8"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
        }
            
        else if group == "CIE18-19"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-9"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "TWD9"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB5"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "514(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 4{
                    cell.title.text = "CED4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "PE2-5"
                    cell.start.text = "9:00"
                    cell.end.text = "11:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-9"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
        }
            
        else if group == "CIE18-20"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-9"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "TWD9"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "PE2-6"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB5"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "514(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 4{
                    cell.title.text = "CED4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-9"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
        }
            
        else if group == "CIE18-21"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-9"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "TWD9"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-6"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 3{
                    cell.title.text = "PE2-6"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-9"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
        }
            
        else if group == "CIE18-22"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-10"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-6"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 3{
                    cell.title.text = "PE2-6"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-10"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD10"
                    cell.start.text = "14:30"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
        }
            
        else if group == "CIE18-23"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-10"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-6"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 3{
                    cell.title.text = "PE2-6"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CED4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(90)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CED4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Jasurbek Khodjaev"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-10"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD10"
                    cell.start.text = "14:30"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
        }
            
        else if group == "CIE18-24"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-10"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-6"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-10"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1{
                    cell.title.text = "PE2-7"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "TWD10"
                    cell.start.text = "14:30"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
        }
            
        else if group == "CIE18-25"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-11"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-6"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 3{
                    cell.title.text = "AE2-11"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD11"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 1{
                    cell.title.text = "PE2-7"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
        }
            
        else if group == "CIE18-26"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-11"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-11"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-7"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB7"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 3{
                    cell.title.text = "TWD11"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 1{
                    cell.title.text = "PE2-7"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
        }
            
        else if group == "CIE18-27"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-11"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-11"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-7"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB7"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 3{
                    cell.title.text = "TWD11"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 1{
                    cell.title.text = "PE2-8"
                    cell.start.text = "14:30"
                    cell.end.text = "16:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
        }
            
        else if group == "CIE18-28"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-12"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-12"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "CH5"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-7"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2LAB7"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(50-Comp)"
                    cell.professor.text = ""
                }
                if indexPath.row == 2{
                    cell.title.text = "CED5"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 3{
                    cell.title.text = "TWD12"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Alie Khalilova"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 1{
                    cell.title.text = "PE2-8"
                    cell.start.text = "14:30"
                    cell.end.text = "16:30"
                    cell.room.text = "201/504(Lab)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            }
        }
            
        else if group == "SOL18-1"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OB1"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 1 {
                    cell.title.text = "TE1"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH6"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "C"
                }
                if indexPath.row == 3{
                    cell.title.text = "LM1"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "S2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Jong Youg Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "OB1"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 2{
                    cell.title.text = "MIS1"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 3{
                    cell.title.text = "LM1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Dr. Jose Tongzon"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "Stat2LAB1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Dr. Jong Young Lee"
                }
                if indexPath.row == 1 {
                    cell.title.text = "TE1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
                if indexPath.row == 2{
                    cell.title.text = "BE2-1"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "MIS1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "BE2-1"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
            }
        }
            
        else if group == "SOL18-2"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "OB1"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 1 {
                    cell.title.text = "TE1"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH6"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "C"
                }
                if indexPath.row == 3{
                    cell.title.text = "LM1"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "S2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Jong Youg Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "OB1"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 2{
                    cell.title.text = "MIS1"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 3{
                    cell.title.text = "LM1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Dr. Jose Tongzon"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "Stat2LAB1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Dr. Jong Young Lee"
                }
                if indexPath.row == 1 {
                    cell.title.text = "TE1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "MIS1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 2{
                    cell.title.text = "BE2-2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "BE2-2"
                    cell.start.text = "10:00"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
            }
        }
            
        else if group == "SOL18-3"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "TE2"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "308(45)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
                if indexPath.row == 1{
                    cell.title.text = "OB2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH6"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "C"
                }
                if indexPath.row == 3{
                    cell.title.text = "MIS2"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OB2"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 1{
                    cell.title.text = "S2-2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Jong Youg Lee"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "Stat2LAB2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Dr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "LM2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "TE2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
                if indexPath.row == 1{
                    cell.title.text = "MIS2"
                    cell.start.text = "10:30"
                    cell.end.text = "11:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 2{
                    cell.title.text = "BE2-2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
                if indexPath.row == 3{
                    cell.title.text = "LM2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Jose Tongzon"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "BE2-2"
                    cell.start.text = "10:00"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
            }
        }
            
        else if group == "SOL18-4"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "TE2"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "308(45)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
                if indexPath.row == 1{
                    cell.title.text = "OB2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH6"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "C"
                }
                if indexPath.row == 3{
                    cell.title.text = "MIS2"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "OB2"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Ju Yeon Oh"
                }
                if indexPath.row == 1{
                    cell.title.text = "S2-2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Jong Youg Lee"
                }
                if indexPath.row == 2{
                    cell.title.text = "BE2-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "Stat2LAB2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Dr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "LM2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "TE2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Joze Tongzon"
                }
                if indexPath.row == 1{
                    cell.title.text = "MIS2"
                    cell.start.text = "10:30"
                    cell.end.text = "11:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 2{
                    cell.title.text = "BE2-3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Joseph Khoffman"
                }
                if indexPath.row == 3{
                    cell.title.text = "LM2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Jose Tongzon"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "FREE DAY!"
                    cell.start.text = "🎉"
                    cell.end.text = "🎉"
                    cell.room.text = "💃🕺💃🕺"
                    cell.professor.text = "🎊🎊🎊"
                }
            }
            
        }
        else if group == "ICE17-1"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "SP1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                } else if indexPath.row == 1{
                    cell.title.text = "AE4-1"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                } else if indexPath.row == 2{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B102(50-Comp)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                else if indexPath.row == 3{
                    cell.title.text = "ItEl1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA1"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 3{
                    cell.title.text = "P2-3"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 4{
                    cell.title.text = "BK2-1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Kim Youngham"
                }
            } else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "OOP2-5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 1 {
                    cell.title.text = "SP1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA1"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }else if indexPath.row == 3{
                    cell.title.text = "EM1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                    
                }}  else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "P2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }else if indexPath.row == 1 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                } else if indexPath.row == 2{
                    cell.title.text = "CaL1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                else if indexPath.row == 3{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                else if indexPath.row == 4{
                    cell.title.text = "H1"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }}
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "EM1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                else if indexPath.row == 1{
                    cell.title.text = "ItEl1"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
                else if indexPath.row == 2 {
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }}
            
        else if group == "ICE17-2"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                } else if indexPath.row == 1{
                    cell.title.text = "ItEl1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "CA1"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
            } else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "CA1"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }else if indexPath.row == 2{
                    cell.title.text = "EM1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                else if indexPath.row == 1{
                    cell.title.text = "AE4-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }else if indexPath.row == 2{
                    cell.title.text = "CaL1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                else if indexPath.row == 3{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 4{
                    cell.title.text = "BK2-2"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Kim Youngham"
                }}
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "EM1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                else if indexPath.row == 2{
                    cell.title.text = "ItEl1"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
                else if indexPath.row == 3 {
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
            
        else if group == "CSE17-1"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }else if indexPath.row == 1{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }  else if indexPath.row == 2{
                    cell.title.text = "BK2-3"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Kim Youngham"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "H2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 3{
                    cell.title.text = "CaL2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
            } else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-2"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }else if indexPath.row == 1{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }  else if indexPath.row == 2{
                    cell.title.text = "BK2-3"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Kim Youngham"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "H2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 3{
                    cell.title.text = "CaL2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-3"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }else if indexPath.row == 1{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }  else if indexPath.row == 2{
                    cell.title.text = "BK2-3"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Kim Youngham"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-3"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
                if indexPath.row == 2{
                    cell.title.text = "EM2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "H2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 3{
                    cell.title.text = "CaL2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 4{
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-4"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-4"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }else if indexPath.row == 3{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-4"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK2-4"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Kim Youngham"
                }
                if indexPath.row == 3{
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 4{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
                if indexPath.row == 3{
                    cell.title.text = "EM2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "H2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 3{
                    cell.title.text = "CaL2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 4{
                    cell.title.text = "AE2-8"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-8"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "EM2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-5"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "BK2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Kim Youngham"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "H2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-5"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 2{
                    cell.title.text = "OOP2LAB7"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 3{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 4{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 5{
                    cell.title.text = "CaL2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 1{
                    cell.title.text = "OOP2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Dr. Kirti Seth"
                }
                if indexPath.row == 2{
                    cell.title.text = "EM3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-6"{
            if day == "Monday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Kim Youngham"
                }
                if indexPath.row == 3{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "H2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-5"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:00"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 3{
                    cell.title.text = "CA2"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 4{
                    cell.title.text = "CaL2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 5{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-7"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-6"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 3{
                    cell.title.text = "CA3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "BK2-6"
                    cell.start.text = "11:30"
                    cell.end.text = "13:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Olga Kim"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-6"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "H3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CA3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 2{
                    cell.title.text = "EM3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-7"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-6"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 3{
                    cell.title.text = "CA3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "BK2-6"
                    cell.start.text = "11:30"
                    cell.end.text = "13:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Olga Kim"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-6"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Rano Neyaskulova"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "H3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CA3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 2{
                    cell.title.text = "EM3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-8"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "AE2-10"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-4"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-7"
                    cell.start.text = "13:00"
                    cell.end.text = "14:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 3{
                    cell.title.text = "EM4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "BK2-7"
                    cell.start.text = "9:30"
                    cell.end.text = "11:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Olga Kim"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2{
                    cell.title.text = "EM4"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "H3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-7"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CA3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-10"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Shakhnoza Turgunova"
                }
                if indexPath.row == 2{
                    cell.title.text = "CaL3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-9"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 3{
                    cell.title.text = "EM4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-8"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM4"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK2-8"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Olga Kim"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "H3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "16:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Khusniddin Olimov"
                }
                if indexPath.row == 3{
                    cell.title.text = "AE4-8"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CA3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)2"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
        }
            
        else if group == "CSE17-10"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 3{
                    cell.title.text = "EM4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-8"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM4"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK2-8"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Olga Kim"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "SP3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 1{
                    cell.title.text = "H3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "AE4-8"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CA3"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
            }
        }
            
        else if group == "CSE17-11"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "CA4"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CA4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "SP4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                if indexPath.row == 3{
                    cell.title.text = "EM4"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-8"
                    cell.start.text = "9:30"
                    cell.end.text = "11:00"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 1{
                    cell.title.text = "EM4"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK2-8"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Olga Kim"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "SP4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "AE4-8"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 4{
                    cell.title.text = "H4"
                    cell.start.text = "17:30"
                    cell.end.text = "19:00"
                    cell.room.text = "B201(60)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if group == "CSE17-12"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "EM5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "CA4"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 4{
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Dr. Bakhodir Akhmedov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CA4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "SP4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "EM5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-9"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "SP4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "H4"
                    cell.start.text = "17:30"
                    cell.end.text = "19:00"
                    cell.room.text = "B201(60)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "AE4-9"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK2-9"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Olga Kim"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if group == "CSE17-13"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "EM5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 1{
                    cell.title.text = "CaL4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 2{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 3{
                    cell.title.text = "CA4"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "CA4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Dr. Andrey Dragunov"
                }
                if indexPath.row == 1 {
                    cell.title.text = "SP4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH3"
                    cell.start.text = "12:30"
                    cell.end.text = "13:30"
                    cell.room.text = "B304(C)"
                }
                
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "EM5"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Rustam Turdibaev"
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "16:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "AE4-10"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 1{
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
                if indexPath.row == 2 {
                    cell.title.text = "SP4"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Dr. Abdul Rakheem Naseer"
                }
                if indexPath.row == 3{
                    cell.title.text = "IP(CSE)3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "101(Comp-40)"
                    cell.professor.text = "Pr. Sarvar Abdullaev"
                }
                if indexPath.row == 4{
                    cell.title.text = "C1-1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
                if indexPath.row == 5{
                    cell.title.text = "H4"
                    cell.start.text = "17:30"
                    cell.end.text = "19:00"
                    cell.room.text = "B201(60)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "CaL4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Pr. Chogkoo An"
                }
                if indexPath.row == 1{
                    cell.title.text = "BK2-10"
                    cell.start.text = "11:30"
                    cell.end.text = "13:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Olga Kim"
                }
                if indexPath.row == 2{
                    cell.title.text = "AE4-10"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Nozima Ergasheva"
                }
                if indexPath.row == 3 {
                    cell.title.text = "C2-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B209(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if group == "SOL17-1"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "BE4-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Dr. Joseph Hoffman"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "FT1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 1{
                    cell.title.text = "E1"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH7"
                    cell.start.text = "13:30"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 3{
                    cell.title.text = "PoA1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "BE4-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Joseph Hoffman"
                }
                if indexPath.row == 1{
                    cell.title.text = "PoA1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
                if indexPath.row == 2{
                    cell.title.text = "BS1"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "BS1"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "HSOL1"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "FT1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK SOL1"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Luiza Tsay"
                }
                if indexPath.row == 3{
                    cell.title.text = "E1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
            }
        }
            
        else if group == "SOL17-2"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "BE4-2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Dr. Joseph Hoffman"
                }
                if indexPath.row == 1{
                    cell.title.text = "BK SOL1"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Luiza Tsay"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "FT1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 1{
                    cell.title.text = "E1"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH7"
                    cell.start.text = "13:30"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 3{
                    cell.title.text = "PoA1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "PoA1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
                if indexPath.row == 1{
                    cell.title.text = "BS1"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "BS1"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "HSOL1"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "605(50)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "FT1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 2{
                    cell.title.text = "BE4-2"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Dr. Joseph Hoffman"
                }
                if indexPath.row == 3{
                    cell.title.text = "E1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "606(50)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
            }
        }
            
        else if group == "SOL17-3"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "E2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "BS2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "BK SOL3"
                    cell.start.text = "15:30"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Luiza Tsay"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "PoA2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
                if indexPath.row == 1{
                    cell.title.text = "CH7"
                    cell.start.text = "13:30"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
                if indexPath.row == 2{
                    cell.title.text = "BE4-3"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B203(40)"
                    cell.professor.text = "Pr. Byers David Mcminn"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "FT2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 1{
                    cell.title.text = "BE4-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Byers David Mcminn"
                }
                if indexPath.row == 2{
                    cell.title.text = "BS2"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "FT2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 2{
                    cell.title.text = "HSOL2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "E2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "PoA2"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
            }
        }
            
        else if group == "SOL17-4"{
            if day == "Monday"{
                if indexPath.row == 0{
                    cell.title.text = "E2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 1{
                    cell.title.text = "BS2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
            }
            else if day == "Tuesday"{
                if indexPath.row == 0{
                    cell.title.text = "BE4-4"
                    cell.start.text = "10:00"
                    cell.end.text = "11:30"
                    cell.room.text = "308(48)"
                    cell.professor.text = "Pr. Byers David Mcminn"
                }
                if indexPath.row == 1{
                    cell.title.text = "PoA2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
                if indexPath.row == 2{
                    cell.title.text = "CH7"
                    cell.start.text = "13:30"
                    cell.end.text = "14:30"
                    cell.room.text = "203(90)"
                    cell.professor.text = "Pr. Abhijit Tarawade"
                }
            }
            else if day == "Wednesday"{
                if indexPath.row == 0{
                    cell.title.text = "FT2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B210(80)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 1{
                    cell.title.text = "BE4-4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "608(45)"
                    cell.professor.text = "Pr. Byers David Mcminn"
                }
                if indexPath.row == 2{
                    cell.title.text = "BS2"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
            } else if day == "Thursday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "FT2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Lee Seulki"
                }
                if indexPath.row == 2{
                    cell.title.text = "HSOL2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Qahramon Yakubov"
                }
            }
            else if day == "Friday"{
                if indexPath.row == 0{
                    cell.title.text = "ItGE1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B101(160)"
                    cell.professor.text = "Pr. Jong Young Lee"
                }
                if indexPath.row == 1{
                    cell.title.text = "E2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Azizbek Marakhimov"
                }
                if indexPath.row == 2{
                    cell.title.text = "PoA2"
                    cell.start.text = "13:30"
                    cell.end.text = "15:00"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Choi Won Gun"
                }
                if indexPath.row == 3{
                    cell.title.text = "BK SOL4"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "607(50)"
                    cell.professor.text = "Pr. Luiza Tsay"
                }
            }
        }
        
        tableView.rowHeight = 60.0

        return cell
    }
    
    // MARK: - Headers
    
   
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveConfetti()
    }
}

extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
        // or use capitalized(with: locale) if you want
    }
}

