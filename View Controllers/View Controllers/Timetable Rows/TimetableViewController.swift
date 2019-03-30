//
//  ExamsViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 3/4/19.
//

import UIKit

class TimetableViewController: UITableViewController {
    
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
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarStyle(.lightContent)
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        
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
        
        
        if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-1"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-2"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-3"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-4"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-5"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-6"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-7"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-8"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-9"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-10"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-11"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-12"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-13"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-14"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-15"{
            return 5
        }
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-16"{
            return 5
        }
        else {
            return 5
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-1"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-2"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-3"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-4"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-5"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-6"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-7"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-8"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-9"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-10"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-11"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-12"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-13"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-14"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-15"{
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
            
        else  if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-16"{
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
            
        else {
            return 1
        }}
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TimetableCell
        
        if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-1"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            } else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "P1-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "B201(80)"
                    cell.professor.text = "Pr. Alisher Sanetullaev"
                }
            } else if indexPath.section == 3{
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
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-2"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            } else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-3"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
                if indexPath.row == 0 {
                    cell.title.text = "C2-1"
                    cell.start.text = "9:00"
                    cell.end.text = "10:30"
                    cell.room.text = "202(80)"
                    cell.professor.text = "Dr. Steftcho Dokov"
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
                    cell.professor.text = "Dr. Steftcho Dokov"
                }
            }
        }
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-4"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-5"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-6"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-7"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-8"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
                if indexPath.row == 0{
                    cell.title.text = "AE2-4"
                    cell.start.text = "15:00"
                    cell.end.text = "16:30"
                    cell.room.text = "B207(40)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            }
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-9"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-10"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-11"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
                    cell.professor.text = "Pr. Iroda Saydazimova"
                }
            }
        }
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-12"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
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
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-13"{
            if indexPath.section == 0{
                if indexPath.row == 0{
                    cell.title.text = "CED3"
                    cell.start.text = "12:00"
                    cell.end.text = "13:30"
                    cell.room.text = "B202(80)"
                    cell.professor.text = "Pr. Ashish Seth"
                }
            }
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "AE2-5"
                    cell.start.text = "14:00"
                    cell.end.text = "15:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-14"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "AE2-6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-15"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
                if indexPath.row == 0{
                    cell.title.text = "AE2-6"
                    cell.start.text = "10:30"
                    cell.end.text = "12:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Begmatova Kholida"
                }
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
            
        else if UserDefaults.standard.string(forKey: "chosenGroup") == "CIE18-16"{
            if indexPath.section == 0{
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
            else if indexPath.section == 1{
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
            else if indexPath.section == 2{
                if indexPath.row == 0 {
                    cell.title.text = "C1-2"
                    cell.start.text = "16:00"
                    cell.end.text = "17:30"
                    cell.room.text = "513(45)"
                    cell.professor.text = "Pr. Bakhodir Akhmedov"
                }
            } else if indexPath.section == 3{
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
            else if indexPath.section == 4{
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
    
    let myTitles: [(name: String, color: UIColor)] = [("Monday", Colors.inhaColor), ("Tuesday", Colors.seagreen), ("Wednesday", Colors.oliveDrab), ("Thursday", Colors.alizarin), ("Friday", Colors.teal)]
    
    
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
