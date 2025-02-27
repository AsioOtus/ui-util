import UIKit

public extension UIViewController {
    func insertFullframeChild (
        _ childVC: UIViewController,
        index: Int? = nil
    ) {
        insertFullframeChild(childVC, to: view, index: index)
    }

    func insertFullframeChild (
        _ childVC: UIViewController,
        to view: UIView,
        index: Int? = nil
    ) {
        insert(childVC, to: view, index: index) {
            $0.pinBoundsConstraints(to: $1)
        }
    }

    func insert (
        _ childVC: UIViewController,
        index: Int? = nil,
        with constraints: (UIView, UIView) -> [NSLayoutConstraint] = { _, _ in [] }
    ) {
        insert(childVC, to: view, index: index, with: constraints)
    }

    func insert (
        _ childVC: UIViewController,
        to view: UIView,
        index: Int? = nil,
        with constraints: (UIView, UIView) -> [NSLayoutConstraint] = { _, _ in [] }
    ) {
        addChild(childVC)

        if let index = index {
            view.insertSubview(childVC.view, at: index)
        } else {
            view.addSubview(childVC.view)
        }

        childVC.didMove(toParent: self)

        childVC.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints(childVC.view, view))
    }
}

public extension UIViewController {
    func removeFromHierarchy (_ action: () -> Void = { }) {
        willMove(toParent: nil)
        action()
        view.removeFromSuperview()
        removeFromParent()
    }
}
