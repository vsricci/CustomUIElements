
import UIKit

protocol Storyboardable {
    
    static func instantiate() -> Self
    static var storyboardIdentifier: String { get }
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle { get }
}

extension Storyboardable where Self: UIViewController {
    
    static var storyboardName: String {
        return "Main"
    }
    
    static var storyboardBundle: Bundle {
        return Bundle.init(identifier: "vsricci.com.CustomUIElements") ?? .main
    }
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        guard let vc = UIStoryboard(name: storyboardName, bundle: storyboardBundle).instantiateViewController(withIdentifier: storyboardIdentifier) as? Self else {
            fatalError()
        }
        return vc
    }
}
