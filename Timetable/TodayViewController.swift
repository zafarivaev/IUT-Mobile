import UIKit
import NotificationCenter


class TodayViewController: UITableViewController, NCWidgetProviding {
    
    let confetti = UIImageView()
    var group = String()
    
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
    override func viewDidAppear(_ animated: Bool) {
//        if let userDefaults = UserDefaults(suiteName: "group.com.zafar.timetable") {
//            userDefaults.synchronize()
//             group = UserDefaults.standard.string(forKey: "chosenGroup")!
//
//        }
        
       
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
            if section == 0{
                return 3
            } else if section == 1{
                return 4
            } else if section == 2{
                return 1
            } else if section == 3{
                return 3
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-2"{
            if section == 0{
                return 3
            } else if section == 1{
                return 3
            } else if section == 2{
                return 2
            } else if section == 3{
                return 3
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-3"{
            if section == 0{
                return 4
            } else if section == 1{
                return 3
            } else if section == 2{
                return 3
            } else if section == 3{
                return 1
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-4"{
            if section == 0{
                return 2
            } else if section == 1{
                return 3
            } else if section == 2{
                return 3
            } else if section == 3{
                return 2
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-5"{
            if section == 0{
                return 2
            } else if section == 1{
                return 4
            } else if section == 2{
                return 2
            } else if section == 3{
                return 2
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-6"{
            if section == 0{
                return 2
            } else if section == 1{
                return 3
            } else if section == 2{
                return 3
            } else if section == 3{
                return 2
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-7"{
            if section == 0{
                return 3
            } else if section == 1{
                return 2
            } else if section == 2{
                return 2
            } else if section == 3{
                return 3
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-8"{
            if section == 0{
                return 3
            } else if section == 1{
                return 1
            } else if section == 2{
                return 2
            } else if section == 3{
                return 3
            } else if section == 4{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CIE18-9"{
            if section == 0{
                return 4
            } else if section == 1{
                return 3
            } else if section == 2{
                return 2
            } else if section == 3{
                return 2
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-10"{
            if section == 0{
                return 4
            } else if section == 1{
                return 3
            } else if section == 2{
                return 2
            } else if section == 3{
                return 2
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-11"{
            if section == 0{
                return 3
            } else if section == 1{
                return 2
            } else if section == 2{
                return 3
            } else if section == 3{
                return 3
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else  if group == "CIE18-12"{
            if section == 0{
                return 2
            } else if section == 1{
                return 3
            } else if section == 2{
                return 2
            } else if section == 3{
                return 3
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-13"{
            if section == 0{
                return 1
            } else if section == 1{
                return 4
            } else if section == 2{
                return 1
            } else if section == 3{
                return 3
            } else if section == 4{
                return 4
            } else {
                return 1
            }}
            
        else  if group == "CIE18-14"{
            if section == 0{
                return 3
            } else if section == 1{
                return 2
            } else if section == 2{
                return 1
            } else if section == 3{
                return 4
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-15"{
            if section == 0{
                return 3
            } else if section == 1{
                return 3
            } else if section == 2{
                return 1
            } else if section == 3{
                return 3
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else  if group == "CIE18-16"{
            if section == 0{
                return 4
            } else if section == 1{
                return 3
            } else if section == 2{
                return 1
            } else if section == 3{
                return 3
            } else if section == 4{
                return 4
            } else {
                return 1
            }}
        else if group == "CIE18-17"{
            if section == 0{
                return 2
            } else if section == 1{
                return 2
            } else if section == 2{
                return 4
            } else if section == 3{
                return 3
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-18"{
            if section == 0{
                return 1
            } else if section == 1{
                return 1
            } else if section == 2{
                return 5
            } else if section == 3{
                return 4
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-19"{
            if section == 0{
                return 3
            } else if section == 1{
                return 1
            } else if section == 2{
                return 5
            } else if section == 3{
                return 2
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-20"{
            if section == 0{
                return 3
            } else if section == 1{
                return 2
            } else if section == 2{
                return 5
            } else if section == 3{
                return 2
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-21"{
            if section == 0{
                return 3
            } else if section == 1{
                return 4
            } else if section == 2{
                return 3
            } else if section == 3{
                return 2
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-22"{
            if section == 0{
                return 2
            } else if section == 1{
                return 4
            } else if section == 2{
                return 3
            } else if section == 3{
                return 2
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-23"{
            if section == 0{
                return 2
            } else if section == 1{
                return 4
            } else if section == 2{
                return 3
            } else if section == 3{
                return 2
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else if group == "CIE18-24"{
            if section == 0{
                return 3
            } else if section == 1{
                return 3
            } else if section == 2{
                return 3
            } else if section == 3{
                return 1
            } else if section == 4{
                return 3
            } else {
                return 1
            }}
            
        else if group == "CIE18-25"{
            if section == 0{
                return 3
            } else if section == 1{
                return 4
            } else if section == 2{
                return 3
            } else if section == 3{
                return 2
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-26"{
            if section == 0{
                return 3
            } else if section == 1{
                return 2
            } else if section == 2{
                return 3
            } else if section == 3{
                return 4
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-27"{
            if section == 0{
                return 3
            } else if section == 1{
                return 2
            } else if section == 2{
                return 3
            } else if section == 3{
                return 4
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else if group == "CIE18-28"{
            if section == 0{
                return 3
            } else if section == 1{
                return 2
            } else if section == 2{
                return 3
            } else if section == 3{
                return 3
            } else if section == 4{
                return 2
            } else {
                return 1
            }}
            
        else if group == "SOL18-1"{
            if section == 0{
                return 4
            } else if section == 1{
                return 4
            } else if section == 2{
                return 3
            } else if section == 3{
                return 1
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else if group == "SOL18-3"{
            if section == 0{
                return 4
            } else if section == 1{
                return 2
            } else if section == 2{
                return 2
            } else if section == 3{
                return 4
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else if group == "SOL18-4"{
            if section == 0{
                return 4
            } else if section == 1{
                return 3
            } else if section == 2{
                return 2
            } else if section == 3{
                return 4
            } else if section == 4{
                return 1
            } else {
                return 1
            }}
            
        else {
            return 1
        }}
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WidgetCell", for: indexPath) as! WidgetCell
        
        if group == "CIE18-1"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                } else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B103"
                    
                } else if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "PE1-1"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 3{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "308(48)"
                    
                }
            } else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    
                }
                else if indexPath.row == 1{
                    cell.title.text = "TWD1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    
                }else if indexPath.row == 2{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "606(50)"
                    
                    
                }} else if indexPath.section == 4{
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
                    
                }
            }
        }
            
        else if group == "CIE18-2"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                } else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B103"
                    
                } else if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "308(48)"
                    
                }
            } else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "PE1-1"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    
                }
                else if indexPath.row == 1{
                    cell.title.text = "TWD1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    
                }else if indexPath.row == 2{
                    cell.title.text = "AE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "606(50)"
                    
                    
                }} else if indexPath.section == 4{
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
                    
                }
            }
        }
            
        else if group == "CIE18-3"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                } else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB1"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B103"
                    
                } else if indexPath.row == 2{
                    cell.title.text = "AE2-2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    
                }else if indexPath.row == 3{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "513(45)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "PE1-1"
                    cell.start.text = "14:00"
                    cell.end.text = "16:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    
                }
            } else if indexPath.section == 4{
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
                    
                }
            }
        }
            
        else if group == "CIE18-4"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "AE2-2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    
                }else if indexPath.row == 1{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "513(45)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE1-3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "201(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    
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
                    cell.room.text = "B102"
                    
                }
            }
        }
            
        else if group == "CIE18-5"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "AE2-2"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    
                }else if indexPath.row == 1{
                    cell.title.text = "CED1"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD2"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "605(50)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "CED1"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B201(80)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-2"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "513(45)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE1-3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "201(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-1"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    
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
                    cell.room.text = "B102"
                    
                }
            }
        }
            
        else if group == "CIE18-6"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "605(50)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B209(80)"
                    
                } else if indexPath.row == 1{
                    cell.title.text = "AE2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B207(40)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "TWD3"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "B207(40)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B201(80)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE1-3"
                    cell.start.text = "13:30"
                    cell.end.text = "15:30"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "210(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-2"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    
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
                    cell.room.text = "B102"
                    
                }
            }
        }
            
        else if group == "CIE18-7"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-3"
                    cell.start.text = "12:30"
                    cell.end.text = "14:00"
                    cell.room.text = "605(50)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "AE2-3"
                    cell.start.text = "10:30"
                    cell.end.text = "12:00"
                    cell.room.text = "B207(40)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD3"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "B207(40)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE2-1"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "210(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-2"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    
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
                    cell.room.text = "B102"
                    
                }
            }
        }
            
        else if group == "CIE18-8"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "613(45)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "209(80)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE2-1"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-1"
                    cell.start.text = "15:30"
                    cell.end.text = "17:00"
                    cell.room.text = "210(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-2"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
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
                    cell.room.text = "B102"
                    
                }
                if indexPath.row == 3{
                    cell.title.text = "TWD4"
                    cell.start.text = "15:00"
                    cell.end.text = "17:00"
                    cell.room.text = "308(48)"
                    
                }
            }
        }
            
        else if group == "CIE18-9"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "513(45)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 3 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE2-1"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    
                }
                
            }
            else if indexPath.section == 4{
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
                    
                }
            }
        }
            
        else if group == "CIE18-10"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "513(45)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 3 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "PE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
            }
            else if indexPath.section == 4{
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
                    
                }
            }
        }
            
        else if group == "CIE18-11"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-5"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "AE2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "308(48)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "PE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
            }
            else if indexPath.section == 4{
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
                    
                }
            }
        }
            
        else if group == "CIE18-12"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "B203(90)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "CED2"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-5"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "AE2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "308(48)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-1"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B203(90)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "PE2-1"
                    cell.start.text = "16:00"
                    cell.end.text = "18:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    
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
                    
                }
            }
        }
            
        else if group == "CIE18-13"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-3"
                    cell.start.text = "9:30"
                    cell.end.text = "10:30"
                    cell.room.text = "607(50)"
                    
                }
                else if indexPath.row == 1{
                    cell.title.text = "OOP2LAB3"
                    cell.start.text = "11:30"
                    cell.end.text = "13:00"
                    cell.room.text = "B103"
                    
                }
                if indexPath.row == 2 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    
                }
                if indexPath.row == 3{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "AE2-5"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "11:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-5"
                    cell.start.text = "11:00"
                    cell.end.text = "12:30"
                    cell.room.text = "308(48)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    
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
                    
                }
                if indexPath.row == 3{
                    cell.title.text = "TWD5"
                    cell.start.text = "13:00"
                    cell.end.text = "15:00"
                    cell.room.text = "308(48)"
                    
                }
            }
        }
            
        else if group == "CIE18-14"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B103"
                
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "AE2-6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "9:00"
                    cell.end.text = "11:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "TWD6"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "308(48)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "AE2-6"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "606(50)"
                    
                }
                if indexPath.row == 3{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    
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
                    
                }
            }
        }
            
        else if group == "CIE18-15"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B103"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "AE2-6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "TWD6"
                    cell.start.text = "12:30"
                    cell.end.text = "14:30"
                    cell.room.text = "308(48)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-6"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "606(50)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    
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
                    
                }
            }
        }
            
        else if group == "CIE18-16"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "OOP2-4"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "606(50)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "OOP2LAB4"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "B103"
                    
                }
                if indexPath.row == 3 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "605(50)"
                    
                }
            }
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "PE2-3"
                    cell.start.text = "11:00"
                    cell.end.text = "13:00"
                    cell.room.text = "201/504(Lab)"
                    
                }
                if indexPath.row == 1 {
                    cell.title.text = "C2-2"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "203(90)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    
                }
            } else if indexPath.section == 3{
                if indexPath.row == 0{
                    cell.title.text = "TWD7"
                    cell.start.text = "10:00"
                    cell.end.text = "12:00"
                    cell.room.text = "606(50)"
                    
                }
                if indexPath.row == 1{
                    cell.title.text = "AE2-7"
                    cell.start.text = "14:30"
                    cell.end.text = "16:00"
                    cell.room.text = "605(50)"
                    
                }
                if indexPath.row == 2{
                    cell.title.text = "P2-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "B202(80)"
                    
                }
            }
            else if indexPath.section == 4{
                if indexPath.row == 0 {
                    cell.title.text = "C2-2"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "203(90)"
                    
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
                    
                }
                if indexPath.row == 3{
                    cell.title.text = "AE2-7"
                    cell.start.text = "16:30"
                    cell.end.text = "18:00"
                    cell.room.text = "B207(45)"
                    
                }
            }
        }
            else if group == "CIE18-17"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-3"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "CED3"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B202(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "PE2-4"
                        cell.start.text = "11:00"
                        cell.end.text = "13:00"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "P2-2"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B202(80)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-5"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB4"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "514(50-Comp)"
                        
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
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "TWD7"
                        cell.start.text = "10:00"
                        cell.end.text = "12:00"
                        cell.room.text = "606(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-7"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-2"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B202(80)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "CED3"
                        cell.start.text = "11:30"
                        cell.end.text = "13:00"
                        cell.room.text = "B203(90)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-7"
                        cell.start.text = "16:30"
                        cell.end.text = "18:00"
                        cell.room.text = "B207(45)"
                        
                    }
                }
            }
                
            else if group == "CIE18-18"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-3"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B201(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "B202(80)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-5"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB5"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "514(50-Comp)"
                        
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
                        
                    }
                    if indexPath.row == 4{
                        cell.title.text = "CED4"
                        cell.start.text = "15:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B203(90)"
                         "Pr. Jasurbek Khodjaev"
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B210(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "TWD8"
                        cell.start.text = "12:00"
                        cell.end.text = "14:00"
                        cell.room.text = "606(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED4"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B209(80)"
                         "Pr. Jasurbek Khodjaev"
                    }
                    if indexPath.row == 3{
                        cell.title.text = "AE2-8"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B207(40)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "PE2-5"
                        cell.start.text = "9:00"
                        cell.end.text = "11:00"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-8"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "608(45)"
                        
                    }
                }
            }
                
            else if group == "CIE18-19"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-3"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-9"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "TWD9"
                        cell.start.text = "14:00"
                        cell.end.text = "16:00"
                        cell.room.text = "608(45)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "B202(80)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-5"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB5"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "514(50-Comp)"
                        
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
                        
                    }
                    if indexPath.row == 4{
                        cell.title.text = "CED4"
                        cell.start.text = "15:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B203(90)"
                         "Pr. Jasurbek Khodjaev"
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B210(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "CED4"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B209(80)"
                         "Pr. Jasurbek Khodjaev"
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "PE2-5"
                        cell.start.text = "9:00"
                        cell.end.text = "11:00"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-9"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B203(40)"
                        
                    }
                }
            }
                
            else if group == "CIE18-20"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-3"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-9"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "TWD9"
                        cell.start.text = "14:00"
                        cell.end.text = "16:00"
                        cell.room.text = "608(45)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "PE2-6"
                        cell.start.text = "16:00"
                        cell.end.text = "18:00"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-5"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB5"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "514(50-Comp)"
                        
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
                        
                    }
                    if indexPath.row == 4{
                        cell.title.text = "CED4"
                        cell.start.text = "15:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B203(90)"
                         "Pr. Jasurbek Khodjaev"
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B210(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "CED4"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B209(80)"
                         "Pr. Jasurbek Khodjaev"
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-9"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B203(40)"
                        
                    }
                }
            }
                
            else if group == "CIE18-21"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-3"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-9"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "TWD9"
                        cell.start.text = "14:00"
                        cell.end.text = "16:00"
                        cell.room.text = "608(45)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-6"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB6"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-3"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "PE2-6"
                        cell.start.text = "16:00"
                        cell.end.text = "18:00"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
                else if indexPath.section == 2{
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
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED4"
                        cell.start.text = "15:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B203(90)"
                         "Pr. Jasurbek Khodjaev"
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B210(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "CED4"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B209(80)"
                         "Pr. Jasurbek Khodjaev"
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-9"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B203(40)"
                        
                    }
                }
            }
                
            else if group == "CIE18-22"{
                if indexPath.section == 0{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-10"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "C2-3"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B201(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-6"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB6"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-3"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "PE2-6"
                        cell.start.text = "16:00"
                        cell.end.text = "18:00"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
                else if indexPath.section == 2{
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
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED4"
                        cell.start.text = "15:00"
                        cell.end.text = "17:30"
                        cell.room.text = "B203(90)"
                         "Pr. Jasurbek Khodjaev"
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B210(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "CED4"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B209(80)"
                         "Pr. Jasurbek Khodjaev"
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-10"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "TWD10"
                        cell.start.text = "14:30"
                        cell.end.text = "16:30"
                        cell.room.text = "B207(40)"
                        
                    }
                }
            }
                
            else if group == "CIE18-23"{
                if indexPath.section == 0{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-10"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "C2-4"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B201(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-6"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB6"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-3"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "PE2-6"
                        cell.start.text = "16:00"
                        cell.end.text = "18:00"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B210(80)"
                        
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
                        cell.end.text = "17:30"
                        cell.room.text = "B203(90)"
                         "Pr. Jasurbek Khodjaev"
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "P2-3"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B210(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "CED4"
                        cell.start.text = "14:00"
                        cell.end.text = "15:30"
                        cell.room.text = "B209(80)"
                         "Pr. Jasurbek Khodjaev"
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-10"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "TWD10"
                        cell.start.text = "14:30"
                        cell.end.text = "16:30"
                        cell.room.text = "B207(40)"
                        
                    }
                }
            }
                
            else if group == "CIE18-24"{
                if indexPath.section == 0{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-10"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "C2-4"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-4"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "202(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-6"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB6"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B202(80)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B210(80)"
                        
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
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B209(80)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-10"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "PE2-7"
                        cell.start.text = "12:30"
                        cell.end.text = "14:30"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "TWD10"
                        cell.start.text = "14:30"
                        cell.end.text = "16:30"
                        cell.room.text = "B207(40)"
                        
                    }
                }
            }
                
            else if group == "CIE18-25"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-11"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-4"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "202(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-6"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB6"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "AE2-11"
                        cell.start.text = "16:30"
                        cell.end.text = "18:00"
                        cell.room.text = "606(50)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B210(80)"
                        
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
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "TWD11"
                        cell.start.text = "15:00"
                        cell.end.text = "17:00"
                        cell.room.text = "513(45)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 1{
                        cell.title.text = "PE2-7"
                        cell.start.text = "12:30"
                        cell.end.text = "14:30"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
            }
                
            else if group == "CIE18-26"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-11"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-4"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "202(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-11"
                        cell.start.text = "16:30"
                        cell.end.text = "18:00"
                        cell.room.text = "606(50)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B210(80)"
                        
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
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-7"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB7"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "TWD11"
                        cell.start.text = "15:00"
                        cell.end.text = "17:00"
                        cell.room.text = "513(45)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 1{
                        cell.title.text = "PE2-7"
                        cell.start.text = "12:30"
                        cell.end.text = "14:30"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
            }
                
            else if group == "CIE18-27"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-11"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-4"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "202(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-11"
                        cell.start.text = "16:30"
                        cell.end.text = "18:00"
                        cell.room.text = "606(50)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B210(80)"
                        
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
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-7"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB7"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "TWD11"
                        cell.start.text = "15:00"
                        cell.end.text = "17:00"
                        cell.room.text = "513(45)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 1{
                        cell.title.text = "PE2-8"
                        cell.start.text = "14:30"
                        cell.end.text = "16:30"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
            }
                
            else if group == "CIE18-28"{
                if indexPath.section == 0{
                    if indexPath.row == 0{
                        cell.title.text = "AE2-12"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "C2-4"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B201(80)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "P2-4"
                        cell.start.text = "16:00"
                        cell.end.text = "17:30"
                        cell.room.text = "202(80)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B202(80)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "AE2-12"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "605(50)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "C2-4"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B210(80)"
                        
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
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "OOP2-7"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OOP2LAB7"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(50-Comp)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CED5"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "TWD12"
                        cell.start.text = "12:30"
                        cell.end.text = "14:30"
                        cell.room.text = "513(45)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 1{
                        cell.title.text = "PE2-8"
                        cell.start.text = "14:30"
                        cell.end.text = "16:30"
                        cell.room.text = "201/504(Lab)"
                        
                    }
                }
            }
                
            else if group == "SOL18-1"{
                if indexPath.section == 0{
                    if indexPath.row == 0{
                        cell.title.text = "OB1"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "TE1"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CH6"
                        cell.start.text = "12:30"
                        cell.end.text = "13:30"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "LM1"
                        cell.start.text = "13:30"
                        cell.end.text = "15:00"
                        cell.room.text = "606(50)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "S2-1"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "606(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OB1"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "606(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "MIS1"
                        cell.start.text = "13:00"
                        cell.end.text = "14:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "LM1"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "513(45)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "Stat2LAB1"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "101(Comp-40)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "TE1"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B203(40)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "BE2-1"
                        cell.start.text = "13:30"
                        cell.end.text = "15:00"
                        cell.room.text = "B207(40)"
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "MIS1"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B207(40)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "BE2-1"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B207(40)"
                        
                    }
                }
            }
                
            else if group == "SOL18-2"{
                if indexPath.section == 0{
                    if indexPath.row == 0{
                        cell.title.text = "OB1"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "TE1"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CH6"
                        cell.start.text = "12:30"
                        cell.end.text = "13:30"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "LM1"
                        cell.start.text = "13:30"
                        cell.end.text = "15:00"
                        cell.room.text = "606(50)"
                        
                    }
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "S2-1"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "606(50)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OB1"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "606(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "MIS1"
                        cell.start.text = "13:00"
                        cell.end.text = "14:30"
                        cell.room.text = "605(50)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "LM1"
                        cell.start.text = "14:30"
                        cell.end.text = "16:00"
                        cell.room.text = "513(45)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "Stat2LAB1"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "101(Comp-40)"
                        
                    }
                    if indexPath.row == 1 {
                        cell.title.text = "TE1"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "B203(40)"
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0{
                        cell.title.text = "MIS1"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "BE2-2"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B207(40)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "BE2-2"
                        cell.start.text = "10:00"
                        cell.end.text = "12:30"
                        cell.room.text = "513(45)"
                        
                    }
                }
            }
                
            else if group == "SOL18-3"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "TE2"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "308(45)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OB2"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CH6"
                        cell.start.text = "12:30"
                        cell.end.text = "13:30"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "MIS2"
                        cell.start.text = "13:30"
                        cell.end.text = "15:00"
                        cell.room.text = "B207(40)"
                        
                    }
                    
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "OB2"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "S2-2"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "608(45)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "Stat2LAB2"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(Comp-40)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "LM2"
                        cell.start.text = "13:00"
                        cell.end.text = "14:30"
                        cell.room.text = "607(50)"
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0 {
                        cell.title.text = "TE2"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B203(40)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "MIS2"
                        cell.start.text = "10:30"
                        cell.end.text = "11:00"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "BE2-2"
                        cell.start.text = "12:00"
                        cell.end.text = "13:30"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "LM2"
                        cell.start.text = "15:00"
                        cell.end.text = "16:30"
                        cell.room.text = "B203(40)"
                        
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "BE2-2"
                        cell.start.text = "10:00"
                        cell.end.text = "12:30"
                        cell.room.text = "513(45)"
                        
                    }
                }
            }
                
            else if group == "SOL18-4"{
                if indexPath.section == 0{
                    if indexPath.row == 0 {
                        cell.title.text = "TE2"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "308(45)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "OB2"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "607(50)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "CH6"
                        cell.start.text = "12:30"
                        cell.end.text = "13:30"
                        cell.room.text = "B209(80)"
                        
                    }
                    if indexPath.row == 3{
                        cell.title.text = "MIS2"
                        cell.start.text = "13:30"
                        cell.end.text = "15:00"
                        cell.room.text = "B207(40)"
                        
                    }
                    
                }
                else if indexPath.section == 1{
                    if indexPath.row == 0{
                        cell.title.text = "OB2"
                        cell.start.text = "9:30"
                        cell.end.text = "11:00"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "S2-2"
                        cell.start.text = "11:00"
                        cell.end.text = "12:30"
                        cell.room.text = "608(45)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "BE2-3"
                        cell.start.text = "12:30"
                        cell.end.text = "14:00"
                        cell.room.text = "308(48)"
                        
                    }
                }
                else if indexPath.section == 2{
                    if indexPath.row == 0 {
                        cell.title.text = "Stat2LAB2"
                        cell.start.text = "10:30"
                        cell.end.text = "12:00"
                        cell.room.text = "101(Comp-40)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "LM2"
                        cell.start.text = "13:00"
                        cell.end.text = "14:30"
                        cell.room.text = "607(50)"
                        
                    }
                } else if indexPath.section == 3{
                    if indexPath.row == 0 {
                        cell.title.text = "TE2"
                        cell.start.text = "9:00"
                        cell.end.text = "10:30"
                        cell.room.text = "B203(40)"
                        
                    }
                    if indexPath.row == 1{
                        cell.title.text = "MIS2"
                        cell.start.text = "10:30"
                        cell.end.text = "11:00"
                        cell.room.text = "B207(40)"
                        
                    }
                    if indexPath.row == 2{
                        cell.title.text = "BE2-3"
                        cell.start.text = "13:30"
                        cell.end.text = "15:00"
                        cell.room.text = "B203(40)"
                       
                    }
                    if indexPath.row == 3{
                        cell.title.text = "LM2"
                        cell.start.text = "15:00"
                        cell.end.text = "16:30"
                        cell.room.text = "B203(40)"
                      
                    }
                }
                else if indexPath.section == 4{
                    if indexPath.row == 0{
                        cell.title.text = "FREE DAY!"
                        cell.start.text = "🎉"
                        cell.end.text = "🎉"
                        cell.room.text = "💃🕺💃🕺"
                     
                    }
                }
        }
        
        tableView.rowHeight = 40.0

        return cell
    }
    
    // MARK: - Headers
    
   
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveConfetti()
    }
}

