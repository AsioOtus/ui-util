import UIKit

public extension UIColor {
	var grayscale: (white: Double, alpha: Double) {
		var white: CGFloat = 0
		var alpha: CGFloat = 0

		getWhite(
			&white,
			alpha: &alpha
		)

		return (white, alpha)
	}

	var whiteComponent: Double { grayscale.white }

	func set (
		white: Double? = nil,
		alpha: Double? = nil
	) -> Self {
		.init(
			white: white ?? grayscale.white,
			alpha: alpha ?? grayscale.alpha
		)
	}

	func setGrayscale (alpha: Double) -> Self {
		set(
			white: nil,
			alpha: alpha
		)
	}
}

