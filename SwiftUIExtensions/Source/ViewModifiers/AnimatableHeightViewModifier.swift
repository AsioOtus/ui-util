import SwiftUI

struct AnimatableHeightViewModifier: AnimatableModifier {
	var height: Double = 0

	var animatableData: Double {
		get { height }
		set { height = newValue }
	}

	func body (content: Content) -> some View {
		content
			.frame(height: height, alignment: .top)
	}
}

public extension View {
	func animatableHeight (height: Double) -> some View {
		modifier(AnimatableHeightViewModifier(height: height))
	}
}
