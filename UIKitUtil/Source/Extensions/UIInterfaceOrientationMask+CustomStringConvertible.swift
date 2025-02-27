import UIKit

extension UIInterfaceOrientationMask: @retroactive CustomStringConvertible {
    public var description: String {
        switch self {
        case .portrait: "all"
        case .landscape: "landscape"
        case .landscapeLeft: "landscapeLeft"
        case .landscapeRight: "landscapeRight"
        case .allButUpsideDown: "allButUpsideDown"
        case .portraitUpsideDown: "portraitUpsideDown"
        case .all: "all"
        default: "unknown"
        }
    }
}
