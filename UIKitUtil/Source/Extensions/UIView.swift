import UIKit

public extension UIView {
    func aspectRatioConstraint (_ value: Double) -> NSLayoutConstraint {
        widthAnchor.constraint(equalTo: heightAnchor, multiplier: value)
    }

    func centeredConstraints (in view: UIView) -> [NSLayoutConstraint] {
        [
            centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ]
    }

    func pinBoundsConstraints (to view: UIView) -> [NSLayoutConstraint] {
        [
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
    }
}

public extension UIView {
	func aspectRatio (_ value: Double) {
        translatesAutoresizingMaskIntoConstraints = false
        aspectRatioConstraint(value).isActive = true
	}

	func centered (in view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centeredConstraints(in: view).activate()
	}

	func pinBounds (to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        pinBoundsConstraints(to: view).activate()
	}

    func constraints (_ constraints: (UIView) -> [NSLayoutConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        constraints(self).activate()
    }

	func insertFullframe (_ view: UIView, at index: Int? = nil) {
		if let index = index {
			insertSubview(view, at: index)
		} else {
			addSubview(view)
		}

        view.pinBounds(to: self)
	}
}
