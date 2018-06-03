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
        button.setTitle("button", for: .normal)
        button.setTitle("pressed", for: .highlighted)
        button.setTitle("disabled", for: .disabled)

        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        
        let secondButton = UIButton(frame: CGRect(x: view.bounds.width / 2, y: view.bounds.height * 0.75, width: 200, height: 80))
        view.addSubview(secondButton)
        secondButton.center = CGPoint(x: view.bounds.width / 2, y: view.bounds.height * 0.75)
        secondButton.addTarget(self, action: #selector(secondButtonPressed), for: .touchUpInside)
        secondButton.setTitle("second", for: .normal)
        secondButton.backgroundColor = .red
    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")
        sender.isEnabled = false
        
        print("button.title(for: .normal)")
        print(button.title(for: .normal))
        print("button.title(for: .highlighted)")
        print(button.title(for: .highlighted))
        print("button.title(for: .disabled)")
        print(button.title(for: .disabled))
        
    }
    @objc func secondButtonPressed(){
        button.isEnabled = true
    }

}

