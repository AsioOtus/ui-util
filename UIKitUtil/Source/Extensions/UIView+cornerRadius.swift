import UIKit

public extension UIView {
	@IBInspectable
	var cornerRadius: CGFloat {
		get { layer.cornerRadius }
		set { layer.cornerRadius = newValue  }
	}

	@discardableResult
	func cornerRadius (_ value: CGFloat) -> Self {
		layer.cornerRadius = value
		return self
	}
}
