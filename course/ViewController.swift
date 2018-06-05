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
        let atrString = NSMutableAttributedString.init(string: "Swift UIButton")
        atrString.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange.init(location: 2, length: 3))
        atrString.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange.init(location: 6, length: 3))
        atrString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 25), range: NSRange.init(location: 0, length: 5))
        atrString.addAttribute(.underlineStyle, value: 1, range: NSRange.init(location: 0, length: 5))
        button.setAttributedTitle(atrString, for: .normal)
        
        let PressedatrString = NSMutableAttributedString.init(string: "Pressed UIButton")
        PressedatrString.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange.init(location: 4, length: 4))
        PressedatrString.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange.init(location: 8, length: 3))
        PressedatrString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 25), range: NSRange.init(location: 0, length: 8))
        PressedatrString.addAttribute(.underlineStyle, value: 1, range: NSRange.init(location: 0, length: 8))
        button.setAttributedTitle(PressedatrString, for: .highlighted)
        
        button.attributedTitle(for: .normal)

    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")
        
        button.setAttributedTitle(button.attributedTitle(for: .normal), for: .highlighted)

        

    }
    


}

