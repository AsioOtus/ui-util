import Combine
import UIKit

extension NotificationCenter {
    public var keyboardWillChangeVisibilityPublisher: AnyPublisher<Bool, Never> {
        Publishers.Merge(
            self
                .publisher(for: UIResponder.keyboardWillShowNotification)
                .map { _ in true },
            self
                .publisher(for: UIResponder.keyboardWillHideNotification)
                .map { _ in false }
        )
        .eraseToAnyPublisher()
    }

    public var keyboardDidChangeVisibilityPublisher: AnyPublisher<Bool, Never> {
        Publishers.Merge(
            self
                .publisher(for: UIResponder.keyboardDidShowNotification)
                .map { _ in true },
            self
                .publisher(for: UIResponder.keyboardDidHideNotification)
                .map { _ in false }
        )
        .eraseToAnyPublisher()
    }
}
