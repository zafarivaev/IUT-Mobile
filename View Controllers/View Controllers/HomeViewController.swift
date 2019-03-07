//
//  HomeViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/13/19.
// 
//

import UIKit
import SafariServices
import MessageUI

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    // CONTACT US Cell
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self as! MFMailComposeViewControllerDelegate
            mail.setToRecipients(["ivaev2274@gmail.com"])
            mail.setMessageBody("<p>You're so awesome!</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            // show failure alert
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    //
    

    @IBOutlet weak var newsCollection: UICollectionView!
    
    @IBOutlet weak var menuCollection: UICollectionView!
    
    
    override func viewDidLoad() {
  setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
  
    }
    
    override func viewWillAppear(_ animated: Bool) {
         setStatusBarBackgroundColor(color: Colors.inhaColor)
    }
   
    @IBAction func openAll(_ sender: Any) {
        if let url = URL(string: "https://inha.uz/en/news/") {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            
            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
    }
    }
    
    // DATA FOR NEWS
    
    let items = ["IUT students won the city stage of the contest" ,"IUT to host Angular Tashkent Meetup", "Inha University in Tashkent to hold Open Doors Day", "IUT professor appointed as Executive Director for the NRNU MEPhI"]
    
    let dates = ["February 13, 2019","February 8, 2019","February 8, 2019","February 7, 2019"]
   
    var logoImage: [UIImage] = [
        UIImage(named: "wonContest.jpg")!,
        UIImage(named: "Angular.jpg")!,
        UIImage(named: "Open.jpg")!,
        UIImage(named: "Mephi.jpg")!
    ]
    let links: [String] = ["https://inha.uz/en/news/752/","https://inha.uz/en/news/751/","https://inha.uz/en/news/750/","https://inha.uz/en/news/749/"]
    
    // DATA FOR MENU
    
    let menuItems = ["Exams","Dining","Map","Contact Us!","INS","Lost & Found"]
    
    var menuImage: [UIImage] = [
    UIImage(named: "Exams")!,
    UIImage(named: "Dining")!,
    UIImage(named: "Map")!,
    UIImage(named: "Contact Us")!,
    UIImage(named: "INS")!,
    UIImage(named: "Lost")!
    ]
    
    let newsLinks: [String] = [""]
    
    //
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        if collectionView == self.newsCollection{
            return items.count
        }
        else{
            return menuItems.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        if collectionView == self.newsCollection{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.labelNews.text = items[indexPath.item]
        cell.dateNews.text = dates[indexPath.item]
        cell.imageNews.image = logoImage[indexPath.item]
        cell.linkNews = links[indexPath.item]
        
            
            cell.contentView.layer.cornerRadius = 10
            cell.contentView.layer.borderWidth = 1.0
            
            cell.contentView.layer.borderColor = UIColor.lightGray.cgColor
            cell.contentView.layer.masksToBounds = true
            
            cell.layer.shadowColor = UIColor.lightText.cgColor
            cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            cell.layer.shadowRadius = 2.0
            cell.layer.shadowOpacity = 1.0
            cell.layer.masksToBounds = false
            cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
            
       return cell
        }
        else{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCollectionViewCell
            cell2.menuLabel.text = menuItems[indexPath.item]
            cell2.menuImg.image =  menuImage[indexPath.item]
            
            cell2.contentView.layer.cornerRadius = 10
            cell2.contentView.layer.borderWidth = 1.0
            
            cell2.contentView.layer.borderColor = UIColor.lightGray.cgColor
            cell2.contentView.layer.masksToBounds = true
            
            cell2.layer.shadowColor = UIColor.lightText.cgColor
            cell2.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            cell2.layer.shadowRadius = 2.0
            cell2.layer.shadowOpacity = 1.0
            cell2.layer.masksToBounds = false
            cell2.layer.shadowPath = UIBezierPath(roundedRect:cell2.bounds, cornerRadius:cell2.contentView.layer.cornerRadius).cgPath
            
            return cell2
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.alpha = 0
        cell.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        UIView.animate(withDuration: 0.25) {
            cell.alpha = 1
            cell.transform = .identity
        }
    }
   

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.newsCollection{
        print(indexPath.item)
        if let url = URL(string: links[indexPath.item]) {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true
            
            let vc = SFSafariViewController(url: url, configuration: config)
            present(vc, animated: true)
            }
        }
        
        if collectionView == self.menuCollection{
            print(indexPath.item)
            
            if indexPath.item == 0{
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "exams") as! ExamsViewController
                
                present(vc, animated: true, completion: nil)
            }
            
            if indexPath.item == 1{
     
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "canteen") as! CanteensTable
                
                present(vc, animated: true, completion: nil)
            }
            
            if indexPath.item == 2{
       
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "map") as! MapViewController
                
                present(vc, animated: true, completion: nil)
            }
            if indexPath.item == 3{
         
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "contactControl") as! contactController
               
                present(vc, animated: true, completion: nil)
            }
            if indexPath.item == 4{
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ins") as! INSViewController
                
                present(vc, animated: true, completion: nil)
            }
            if indexPath.item == 5{
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "LF") as! L_FController
                
                present(vc, animated: true, completion: nil)
            }
           
    }
    }
 


}

