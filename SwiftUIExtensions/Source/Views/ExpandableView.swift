import SwiftUI

@available(iOS 15.0, *)
public struct ExpandableView <Content: View>: View {
	@State private var size: CGSize? = .zero

	@Binding private var isExpanded: Bool
	private let content: Content

	private var height: Double {
		isExpanded ? .init(size?.height ?? 0) : 0
	}

	public init (
		isExpanded: Binding<Bool>,
		content: () -> Content
	) {
		self._isExpanded = isExpanded
		self.content = content()
	}

	public var body: some View {
		content
			.animatableHeight(height: height)
			.allowsTightening(isExpanded)
			.clipped()
			.background {
				content
					.hidden()
					.size($size)
			}
	}
}
