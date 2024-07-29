import SwiftUI

@available(iOS 13.0, *)
extension Font {
    public static func pretendard( _ weight: QvickFont.Pretendard = .regular, size: CGFloat ) -> Font {
        return weight.font(size: size)
    }
}
