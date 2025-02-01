import SwiftUI

public extension View {
	@ViewBuilder
	func `if` (
		_ condition: Bool,
		then: @ViewBuilder (Self) -> some View
	) -> some View {
		if condition {
			then(self)
		} else {
			self
		}
	}

	@ViewBuilder
	func `if` (
		_ condition: Bool,
		then: @ViewBuilder (Self) -> some View,
		else: @ViewBuilder (Self) -> some View
	) -> some View {
		if condition {
			then(self)
		} else {
			`else`(self)
		}
	}
}
