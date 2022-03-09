
import UIKit

class ViewController: UIViewController ,MyDataSendingDelegateProtocol {
   
    
    @IBOutlet weak var receivedDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func sendDataToFirstViewController(myData: String) {
        self.receivedDataLabel.text = myData
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }
}   
