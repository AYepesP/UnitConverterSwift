
import UIKit

class TempetureViewController: UIViewController {
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
    

}
