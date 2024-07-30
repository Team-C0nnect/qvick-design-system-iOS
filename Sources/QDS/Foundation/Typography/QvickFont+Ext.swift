import SwiftUI

extension QvickFont {
    public protocol CanDefine {
        var name: String { get }
        
        static func register()
    }
    
    public protocol Fontable {
        var font: Font { get }
    }
}


extension QvickFont.CanDefine {
    public func font( size: CGFloat ) -> Font {
        return Font.custom(self.name, size: size)
    }
}
