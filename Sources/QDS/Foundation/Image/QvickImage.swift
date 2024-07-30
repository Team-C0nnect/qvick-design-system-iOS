import SwiftUI

public enum QvickImage: String {
    case logo
    case logoWithText
    case smallLogo
}

extension QvickImage {
    public var image: Image {
        get {
            return Image(self.rawValue, bundle: .module)
        }
    }
}
