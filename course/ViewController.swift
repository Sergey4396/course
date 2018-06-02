import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let button = UIButton(type: .system)
        button.bounds = CGRect(x: 0, y: 0, width: 200, height: 80)
        button.backgroundColor = .orange
        view.addSubview(button)
        
        button.center = view.center
        button.setTitle("button", for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        

    }
    @objc func buttonPressed(){
        print("button pressed")
    }

}

