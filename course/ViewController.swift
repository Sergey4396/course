import UIKit
class ViewController: UIViewController {
    var button = MyShrinkingButton()
    var button2 = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button = MyShrinkingButton()
        button.bounds = CGRect(x: 0, y: 0, width: 200, height: 80)
        button.backgroundColor = .orange
        button.center = view.center
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        view.addSubview(button)
        
//        let img = UIImage(named: "imgNew")
//        button.setImage(img, for: .normal)
        
//
//        button2 = UIButton()
//        button2.bounds = CGRect(x: 0, y: 0, width: 200, height: 80)
//        button2.backgroundColor = .orange
//        button2.center = CGPoint(x: view.bounds.width / 2, y: view.bounds.height * 0.75)
//        button2.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
//        view.addSubview(button2)
//        let img2 = UIImage(named: "imgNew")
//        button2.setBackgroundImage(img2, for: .normal)
//
//        button.setTitle("Title22", for: .normal)
//        button2.setTitle("Title22", for: .normal)
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
//        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
//        button.setTitleColor(.black, for: .normal)
//        button2.setTitleColor(.black, for: .normal)
        
    }
    @objc func buttonPressed(sender: UIButton){
        print("button pressed")

    }
}


extension CGRect {
    init(_ x:CGFloat, _ y:CGFloat, _ w:CGFloat, _ h:CGFloat) {
        self.init(x:x, y:y, width:w, height:h)
    }
}
extension CGSize {
    init(_ width:CGFloat, _ height:CGFloat) {
        self.init(width:width, height:height)
    }
}
extension CGPoint {
    init(_ x:CGFloat, _ y:CGFloat) {
        self.init(x:x, y:y)
    }
}
extension CGVector {
    init (_ dx:CGFloat, _ dy:CGFloat) {
        self.init(dx:dx, dy:dy)
    }
}



extension CGSize {
    func sizeByDelta(dw:CGFloat, dh:CGFloat) -> CGSize {
        return CGSize(self.width + dw, self.height + dh)
    }
}

class MyShrinkingButton: UIButton {
    
    override func backgroundRect(forBounds bounds: CGRect) -> CGRect {
        var result = super.backgroundRect(forBounds:bounds)
        if self.isHighlighted {
            result = result.insetBy(dx: 3, dy: 3)
        }
        return result
    }
    
    override var intrinsicContentSize : CGSize {
        return super.intrinsicContentSize.sizeByDelta(dw:25, dh: 20)
    }
    
    
}





//extension CGSize {
//    func sizeByDelta(dw:CGFloat, dh:CGFloat) -> CGSize {
//        return CGSize(width:self.width + dw, height:self.height + dh)
//    }
//}
//class MyShrinkingButton: UIButton {
//    override func backgroundRect(forBounds bounds: CGRect) -> CGRect {
//        var result = super.backgroundRect(forBounds:bounds)
//        if self.isHighlighted {
//            result = result.insetBy(dx: 3, dy: 3)
//        }
//        return result
//    }
//    override var intrinsicContentSize : CGSize {
//        return super.intrinsicContentSize.sizeByDelta(dw:25, dh: 20)
//    }
//}









//extension CGSize {
//    func sizeByDelta(dw:CGFloat, dh:CGFloat) -> CGSize {
//        return CGSize(self.width + dw, self.height + dh)
//    }
//}
//class MyShrinkingButton: UIButton {
//    override func backgroundRect(forBounds bounds: CGRect) -> CGRect {
//        var result = super.backgroundRect(forBounds:bounds)
//        if self.isHighlighted {
//            result = result.insetBy(dx: 3, dy: 3)
//        }
//        return result
//    }
//    override var intrinsicContentSize : CGSize {
//        return super.intrinsicContentSize.sizeByDelta(dw:25, dh: 20)
//    }
//}

