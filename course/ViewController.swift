
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        let button1 = UIButton()
        button1.bounds =  CGRect(x: 0, y: 0, width: 100, height: 100)
        button1.center = view.center
        button1.setTitle("button", for: .normal)
        button1.backgroundColor = .orange
        button1.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
        
        view.addSubview(button1)
    }


    @objc func buttonPressed(sender: UIButton){
    sender.backgroundColor = UIColor.black
    }

}

