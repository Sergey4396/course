import UIKit
class ViewController: UIViewController {
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button = UIButton(type: .system)
        button.bounds = CGRect(x: 0, y: 0, width: 200, height: 80)
        button.backgroundColor = .lightGray
        button.center = view.center
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        let image1 = UIImage(named: "star")//?.withRenderingMode(.alwaysOriginal)
//        let image2 = UIImage(named: "imgButtonActive")
        button.setImage(image1, for: .normal)
//        button.setBackgroundImage(image2, for: .highlighted)
        button.tintColor = .green
        view.addSubview(button)
//        button.imageView?.contentMode = .scaleAspectFit

    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")

    }
}
