import UIKit

public extension UIStoryboard {
	func instantiate <VC: UIViewController> (_ identifier: String) -> VC {
		instantiateViewController(withIdentifier: identifier) as! VC
	}
	
	func instantiate <VC: UIViewController> (_: VC.Type) -> VC {
		instantiateViewController(withIdentifier: String(describing: VC.self)) as! VC
	}

    subscript <VC: UIViewController> (_ identifier: String) -> VC {
        instantiate(identifier)
    }

	subscript <VC: UIViewController> (_: VC) -> VC {
		instantiate(VC.self)
	}
}
