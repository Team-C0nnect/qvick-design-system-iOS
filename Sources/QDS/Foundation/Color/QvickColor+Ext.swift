import SwiftUI

@available(iOS 13.0, *)
extension QvickColor {
    public protocol ColorContain {
        var color: Color { get }
    }
        
    public protocol CanPallete: ColorContain {
            
    }
        
    public protocol CanSemantic: ColorContain {
        var pallete: CanPallete { get }
    }
}

extension QvickColor.CanPallete {
    public var color: Color {
        get {
            self.toColor()
        }
    }
    
    private func toColor() -> Color {
        let enumName = String(reflecting: self).split(separator: ".").dropLast().last
        let caseName = String(describing: self)
        
        if enumName == nil {
            return .gray
        }
        
        return Color("\(enumName!)/\(caseName)", bundle: .module)
    }
}

extension QvickColor.CanSemantic {
    public var color: Color {
        get {
            self.pallete.color
        }
    }
}
