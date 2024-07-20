import UIKit

extension UIColor {
	convenience init (hex: Int, alpha: CGFloat = 1) {
		let red = CGFloat((hex & 0xff0000) >> 16) / 255
		let green = CGFloat((hex & 0x00ff00) >> 8) / 255
		let blue = CGFloat(hex & 0x0000ff) / 255

		self.init(
			red: red,
			green: green,
			blue: blue,
			alpha: alpha
		)
	}
}
