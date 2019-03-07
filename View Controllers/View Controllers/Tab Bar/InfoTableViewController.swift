//
//  InfoTableViewController.swift
//  IUT Mobile
//
//  Created by Zafar on 2/16/19.
//

import UIKit
import MessageUI
import SafariServices

class InfoTableViewController: UITableViewController, MFMailComposeViewControllerDelegate {

    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
    }


    // MARK: - Table view data source

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override var prefersStatusBarHidden: Bool{
        return false
    }    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            if indexPath.row == 0{
                guard let number = URL(string: "tel://" + "+998712899999") else { return }
                UIApplication.shared.open(number)
            }
            if indexPath.row == 1{
                guard let number = URL(string: "tel://" + "+998712690058") else { return }
                UIApplication.shared.open(number)
            }
            if indexPath.row == 2{
                guard let number = URL(string: "tel://" + "+998712625150") else { return }
                UIApplication.shared.open(number)
            }
        }
        if indexPath.section == 1{
        if indexPath.row == 0{
            let picker = MFMailComposeViewController()
            picker.mailComposeDelegate = self
            picker.setToRecipients(["info@inha.uz"])
            present(picker, animated: true, completion: nil)
        }
            
            if indexPath.row == 1{
                let picker = MFMailComposeViewController()
                picker.mailComposeDelegate = self
                picker.setToRecipients(["admission@inha.uz"])
                present(picker, animated: true, completion: nil)
            }
        }
        
        else if indexPath.section == 2{
            if indexPath.row == 0{
                if let url = URL(string: "https://inha.uz/en/") {
                    let config = SFSafariViewController.Configuration()
                    config.entersReaderIfAvailable = true
                    
                    let vc = SFSafariViewController(url: url, configuration: config)
                    present(vc, animated: true)
                }
            }
            if indexPath.row == 1{
                if let url = URL(string: "https://facebook.inha.com") {
                    let config = SFSafariViewController.Configuration()
                    config.entersReaderIfAvailable = true
                    
                    let vc = SFSafariViewController(url: url, configuration: config)
                    present(vc, animated: true)
                }
            }
            if indexPath.row == 2{
                if let url = URL(string: "https://twitter.com/Inha_Tashkent") {
                    let config = SFSafariViewController.Configuration()
                    config.entersReaderIfAvailable = true
                    
                    let vc = SFSafariViewController(url: url, configuration: config)
                    present(vc, animated: true)
                }
            }
        }
        print(indexPath.row)
    }
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true, completion: nil)
    }

}
