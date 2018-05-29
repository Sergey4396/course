
import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
   //     let button1 = UIButton(type: .system)// as! UIButton
   //     let button1 = UIButton(type: .detailDisclosure)// as! UIButton
    //    let button1 = UIButton(type: .contactAdd)
   //Deprecated   let button1 = UIButton(type: .roundedRect)
   //     let button1 = UIButton(type: .infoDark)
        let button1 = UIButton(type: .infoLight)
        button1.bounds =  CGRect(x: 0, y: 0, width: 100, height: 100)
        
        button1.center = view.center
        button1.setTitle("button", for: .normal)
        button1.backgroundColor = .orange
        button1.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchUpInside)
        button1.addTarget(self, action: #selector(buttonPressed2(sender:)), for: .touchUpInside)
        
        view.addSubview(button1)
        
    }

    @objc func buttonPressed(sender: UIButton){
        sender.backgroundColor = UIColor.black
    }
    @objc func buttonPressed2(sender: UIButton){
        sender.setTitle("changed", for: .normal)
    }

}
