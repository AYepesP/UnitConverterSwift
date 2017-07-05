
import UIKit

class TempetureViewController: UIViewController {
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    func validateEntry (entry: String) -> Double
    {
        if let value = Double(entry){
            return value
        }
        else{
            return 0
        }
    }
    func fahrenheitToCelsius (fahrenheit: Double) -> Double
    {
        let celsius = ((fahrenheit - 32) * 5) / 9
        return celsius
    }
    func celsiusToFehrenheit (celsius: Double) -> Double
    {
        let fahrenheit = ((celsius * 9 ) / 5) + 32
        return fahrenheit
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onTappedCalculateButton(_ sender: Any) {
        if (celsiusTextField.text == "" && fahrenheitTextField.text == ""){}
        else if (celsiusTextField.text != "" && fahrenheitTextField.text != "")
        {
            celsiusTextField.text = ""
            fahrenheitTextField.text = ""
        }
        else if (celsiusTextField.text != "" && fahrenheitTextField.text == "")
        {
            let total = celsiusToFehrenheit(celsius: validateEntry(entry: celsiusTextField.text!))
            fahrenheitTextField.text = String(total)
        }
        else if (fahrenheitTextField.text != "" && celsiusTextField.text == "")
        {
            let total = fahrenheitToCelsius(fahrenheit: validateEntry(entry: fahrenheitTextField.text!))
            celsiusTextField.text = String(total)
        }
    }

}
