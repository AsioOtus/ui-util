import UIKit

extension UIInterfaceOrientation: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .unknown: "unknown"
        case .portrait: "portrait"
        case .portraitUpsideDown: "portraitUpsideDown"
        case .landscapeLeft: "landscapeLeft"
        case .landscapeRight: "landscapeRight"
        @unknown default: "unknown"
        }
    }
}
