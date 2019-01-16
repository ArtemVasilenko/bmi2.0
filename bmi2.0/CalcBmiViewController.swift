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
        
        let tapUser = UITapGestureRecognizer(target: self, action: #selector (userTap(tap:)))
        resultImage.isUserInteractionEnabled = true
        resultImage.addGestureRecognizer(tapUser)
        
        createImageView()
        labelResult.text = result.0
        resultImage.image = result.1
    }
    
    @objc func userTap (tap: UITapGestureRecognizer) {
        UIView.animate(withDuration: 0.75, animations: {
            self.resultImage.center.y += 10
            })
    }
}
