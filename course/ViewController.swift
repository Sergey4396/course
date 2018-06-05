import UIKit

class ViewController: UIViewController {
    var button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button = UIButton()
        button.bounds = CGRect(x: 0, y: 0, width: 200, height: 80)
        button.backgroundColor = .orange
        view.addSubview(button)
        button.center = view.center
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.setTitle("button", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.setTitleColor(.yellow, for: .normal)
        
        button.setTitleShadowColor(.gray, for: .normal)
        button.titleLabel?.shadowOffset = CGSize(width: 3, height: 3)
        button.reversesTitleShadowWhenHighlighted = true


    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")
    }
}

