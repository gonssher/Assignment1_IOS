import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet var webPage : WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlAddress = URL(string : "https://www.google.ca")
        let  url = URLRequest(url: urlAddress!)
        webPage.load(url)
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
