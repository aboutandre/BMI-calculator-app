import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBAction func heightSlider(_ sender: UISlider) {
        let formatted = String(format: "%.2f", sender.value)
        heightLabel.text = "\(formatted)m"
    }
    @IBOutlet weak var height: UISlider!
    @IBOutlet weak var weight: UISlider!
    @IBAction func weightSlider(_ sender: UISlider) {
        let formatted = Int(sender.value)
        weightLabel.text = "\(formatted)Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height: height.value, weight: weight.value)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMI()
            destinationVC.bmiAdvice = calculatorBrain.getAdvice()
            destinationVC.bmiColor = calculatorBrain.getColor()
        }
    }
}
