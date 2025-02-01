import UIKit

public extension UIStoryboard {
    convenience init <SI: StoryboardInstantiatable> (for: SI.Type, bundle: Bundle? = nil) {
        self.init(name: SI.storyboardName, bundle: bundle)
    }

	func instantiate <SI: StoryboardInstantiatable> (identifiable: SI.Type) -> SI {
		instantiateViewController(withIdentifier: SI.identifierInStoryboard) as! SI
	}

	subscript <SI: StoryboardInstantiatable> (identifiable: SI.Type) -> SI {
		instantiate(SI.self)
	}
}
