import UIKit

public extension UIColor {
	var hsba: (hue: Double, saturation: Double, brightness: Double, alpha: Double) {
		var hue: CGFloat = 0
		var saturation: CGFloat = 0
		var brightness: CGFloat = 0
		var alpha: CGFloat = 0

		getHue(
			&hue,
			saturation: &saturation,
			brightness: &brightness,
			alpha: &alpha
		)

		return (hue, saturation, brightness, alpha)
	}

	var hue: Double { hsba.hue }
	var saturation: Double { hsba.saturation }
	var brightness: Double { hsba.brightness }

	func set (
		hue: Double? = nil,
		saturation: Double? = nil,
		brightness: Double? = nil,
		alpha: Double? = nil
	) -> Self {
		.init(
			hue: hue ?? hsba.hue,
			saturation: saturation ?? hsba.saturation,
			brightness: brightness ?? hsba.brightness,
			alpha: alpha ?? hsba.alpha
		)
	}

	func setHSB (alpha: Double) -> Self {
		set(
			hue: nil,
			saturation: nil,
			brightness: nil,
			alpha: alpha
		)
	}
}
