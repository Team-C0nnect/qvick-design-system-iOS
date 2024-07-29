import SwiftUI

public enum QvickImage: String {
    case Logo
    case LogoWithText
    case LogoSmall
}

@available(iOS 13.0, *)
extension QvickImage {
    public var image: Image {
        get {
            return Image(self.rawValue, bundle: .module)
        }
    }
}
