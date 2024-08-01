import SwiftUI

public enum QvickImage: String {
    case logo
    case logoWithText
    case smallLogo
    case chevron
}

extension QvickImage {
    public var image: Image {
        get {
            return Image(self.rawValue, bundle: .module)
        }
    }
}
