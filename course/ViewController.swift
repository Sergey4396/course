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
        
        let control = UIControl()
        
     //   control.center = CGPoint(x: 200, y: 200)
        control.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
       // control.getGradientBackground(colorOne: .red, colorTwo: .blue)
        
//        control.bounds.origin = CGPoint(x: 50, y: 100)
        
        control.transform = CGAffineTransform(rotationAngle: -CGFloat((Double.pi / 4)))
        
        control.bounds.origin = CGPoint(x: 50, y: 100)

        // = CGRect(x: 100, y: 100, width: 100, height: 100)
//        control.bounds.size = CGSize(width: 100, height: 50)
//        control.bounds.origin = CGPoint(x: 100, y: 100)
//       print("control.bounds.origin.x")
//       print(control.bounds.origin.x)
//        print("control.bounds.origin.y")
//        print(control.bounds.origin.y)
//        //control.center = view.center
//
//        control.frame.origin = CGPoint(x: 100, y: 0)
        
        
        view.addSubview(control)
        control.backgroundColor = .green
        control.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        

    }
    @objc func buttonPressed(){
        print("button pressed")
    }

}

extension UIView {
    
    func getGradientBackground(colorOne: UIColor, colorTwo: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.6, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
}


