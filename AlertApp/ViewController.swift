import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var main_edUserName: UITextField!
    @IBOutlet weak var main_edPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func main_buSignUp(_ sender: Any) {
        if(main_edUserName.text == "" && main_edPassword.text == ""){
            showToast(Ti: "Error", message: "Please Fill All Data")
        }else if(main_edUserName.text == ""){
            showToast(Ti: "Error", message: "Username Not Found")
        }else if(main_edPassword.text == ""){
            showToast(Ti: "Error", message: "Password Not Found")
        }else{
            showToast(Ti: "Success", message: "User Has Added")
        }
        

    }
    
}

extension UIViewController{
    func showToast(Ti:String, message:String){
        let alert = UIAlertController(title: Ti, message: message, preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
}
