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
        let img = UIImage(named: "swiftImg")
        


        
        button.setTitle("Swift", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleEdgeInsets = UIEdgeInsetsMake(10, button.bounds.width * 0.35, 30, button.bounds.width * 0.05)
        
        
        let imgPressed = UIImage(named: "imgButtonActive")
        button.setImage(img, for: .selected)
        
        button.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsetsMake(0, button.bounds.width * 0.05, 0, button.bounds.width * 0.65)
        button.setTitle("Swift", for: .highlighted)
        button.isSelected = true
        
        button.setTitle("selected", for: .selected)
        
//        button.setBackgroundImage(img, for: .normal)
//        button.isEnabled = false
        
        button.adjustsImageWhenHighlighted = true
        button.adjustsImageWhenDisabled = true
        button.showsTouchWhenHighlighted = true
        
        button.imageView?.isHighlighted = true

    //    button.imageView?.leftAnchor.constraint(equalTo: button.leftAnchor).isActive = true


        
    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")
        sender.isSelected = !sender.isSelected
    }
}

