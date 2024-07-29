import SwiftUI

extension QvickFont {
    public protocol CanDefine {
        var name: String { get }
        
        static func register()
    }
}




@available(iOS 13.0, *)
extension QvickFont.CanDefine {
    public func font( size: CGFloat ) -> Font {
        return Font.custom(self.name, size: size)
    }
}
