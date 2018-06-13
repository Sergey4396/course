import UIKit
class ViewController: UIViewController {
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button = UIButton()
        button.bounds = CGRect(x: 0, y: 0, width: 200, height: 80)
        button.backgroundColor = .lightGray
        button.center = view.center
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        let image1 = UIImage(named: "imgButton")
//        let image2 = UIImage(named: "imgButtonActive")
        button.setBackgroundImage(image1, for: .normal)
//        button.setBackgroundImage(image2, for: .highlighted)
        button.adjustsImageWhenHighlighted = true
        button.adjustsImageWhenDisabled = true
        button.showsTouchWhenHighlighted = false
        view.addSubview(button)
   
    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")

    }
}