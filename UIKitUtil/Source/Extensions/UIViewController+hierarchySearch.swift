import UIKit

public extension UIViewController {
    func firstSubViewController (where condition: (UIViewController) -> Bool) -> UIViewController? {
        if condition(self) {
            return self
        }

        for subVC in subViewControllers {
            if let vc = subVC.firstSubViewController(where: condition) {
                return vc
            }
        }

        return nil
    }

    func firstSubViewController <VC> (of type: VC.Type) -> VC? {
        if let vc = self as? VC {
            return vc
        }

        for subVC in subViewControllers {
            if let vc = subVC.firstSubViewController(of: type) {
                return vc
            }
        }

        return nil
    }

    var subViewControllers: [UIViewController] {
        children + (presentedViewController.map { [$0] } ?? [])
    }
}
