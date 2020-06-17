import UIKit

class ViewController: UIViewController {
    let loader = AdLoader();
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cacheAd(_ sender: Any) {
        loader.cache()
    }
    
    @IBAction func showad(_ sender: Any) {
        loader.show(controller: self)
    }
}
