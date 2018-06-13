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
        let img1 = UIImage(named: "imgNew")
        let img2 = UIImage(named: "imgNew")
        button.setImage(img1, for: .normal)
        button.setImage(img2, for: .highlighted)
        button.setTitle("Title", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 55)
        button.setTitleColor(.red, for: .normal)

        view.addSubview(button)
   
    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")

    }
}