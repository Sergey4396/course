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
        button.setTitle("button very long button", for: .normal)
        button.setTitle("pressed", for: .highlighted)
        button.setTitle("disabled", for: .disabled)

        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        button.titleLabel?.text = "New text"
        button.titleLabel?.textColor = .red
        
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.numberOfLines = 2

    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")

        

    }


}

