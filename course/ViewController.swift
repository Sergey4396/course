import UIKit
class ViewController: UIViewController {
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button = UIButton()
        button.bounds = CGRect(x: 0, y: 0, width: 200, height: 80)
        button.backgroundColor = .orange
        button.center = view.center
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.setTitle("Button", for: .normal)
        view.addSubview(button)
    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")
    }
}
