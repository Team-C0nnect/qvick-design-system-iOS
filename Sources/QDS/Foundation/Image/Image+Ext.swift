import SwiftUI

@available(iOS 13.0, *)
public extension Image {
    init(qvick: QvickImage) {
        self = qvick.image
    }
}
