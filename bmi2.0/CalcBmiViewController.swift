import UIKit

class CalcBmiViewController: UIViewController {
    var bmi: Bmi = BmiCalc()
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
        self.scrollView.maximumZoomScale = 6
        self.scrollView.minimumZoomScale = 1.0
        //MARK: calculation results into label and image
        labelResult.text = bmi.result.0
        resultImage.image = bmi.result.1
    }
}

extension CalcBmiViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return resultImage.self
    }
}
