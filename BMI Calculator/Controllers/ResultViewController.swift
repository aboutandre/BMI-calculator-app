import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var colorValue: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        colorValue.backgroundColor = bmiColor
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
