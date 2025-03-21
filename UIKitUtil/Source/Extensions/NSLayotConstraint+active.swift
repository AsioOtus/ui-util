import UIKit

public extension NSLayoutConstraint {
	@discardableResult
	func active (_ value: Bool = true) -> Self {
		isActive = value
		return self
	}
}

public extension Array where Element == NSLayoutConstraint {
    func activate () {
        NSLayoutConstraint.activate(self)
    }
}
