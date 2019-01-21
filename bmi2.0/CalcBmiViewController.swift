import UIKit

class CalcBmiViewController: UIViewController {
    var bmi: Bmi = BmiCalc()
    var resultImage = UIImageView()
    @IBOutlet weak var labelResult: UILabel!
    

    fileprivate func createImageView() {
        self.resultImage.frame = CGRect(x: self.view.frame.size.width/5, y: 80, width: 200, height: 200)
        self.resultImage.contentMode = .scaleAspectFit
        self.resultImage.isUserInteractionEnabled = true
        self.view.addSubview(resultImage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: TapUser
        let tapUser = UITapGestureRecognizer(target: self, action: #selector (userTap(tap:)))
        resultImage.isUserInteractionEnabled = true
        resultImage.addGestureRecognizer(tapUser)
        
        
        
        //MARK: create Image and label
        createImageView()
        labelResult.text = bmi.result.0
        resultImage.image = bmi.result.1
    }
    
    @objc func userTap (tap: Any) {
        UIView.animate(withDuration: 0.75, animations: {
            self.resultImage.center.y += 10
        })
        
    }
    
}
