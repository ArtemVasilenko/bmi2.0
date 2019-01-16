import UIKit

class CalcBmiViewController: UIViewController {
    
    var resultImage = UIImageView()
    @IBOutlet weak var labelResult: UILabel!
    
    
    fileprivate func createImageView() {
        self.resultImage.frame = CGRect(x: 60, y: 80, width: 200, height: 200)
        self.resultImage.contentMode = .scaleAspectFit
        self.resultImage.isUserInteractionEnabled = true
        self.view.addSubview(resultImage)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createImageView()
        labelResult.text = result.0
        resultImage.image = result.1
    }
}
