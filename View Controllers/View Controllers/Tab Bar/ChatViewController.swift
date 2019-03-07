import UIKit
import WebKit

class ChatViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var chat: UIWebView!
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    func setStatusBarBackgroundColor(color: UIColor) {
        
        guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
        statusBar.backgroundColor = Colors.inhaColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStatusBarBackgroundColor(color: Colors.inhaColor)
        setStatusBarStyle(.lightContent)
        chat.delegate = self
        if let url = URL(string: "https://us23.chatzy.com/46691842168685") {
            let request = URLRequest(url: url)
            chat.loadRequest(request)
        }
    }
    

    
}
