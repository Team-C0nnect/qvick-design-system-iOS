import SwiftUI

extension Font {
    public static func pretendard( _ weight: QvickFont.Pretendard = .regular, size: CGFloat ) -> Font {
        return weight.font(size: size)
    }
    
    public static func display1( _ style: QvickTextStyle.Display1 ) -> Font {
        return style.font
    }
    public static func display2( _ style: QvickTextStyle.Display2 ) -> Font {
        return style.font
    }
    
    public static func title1( _ style: QvickTextStyle.Title1 ) -> Font {
        return style.font
    }
    public static func title2( _ style: QvickTextStyle.Title2 ) -> Font {
        return style.font
    }
    public static func title3( _ style: QvickTextStyle.Title3 ) -> Font {
        return style.font
    }
    
    public static func heading1( _ style: QvickTextStyle.Heading1 ) -> Font {
        return style.font
    }
    public static func heading2( _ style: QvickTextStyle.Heading2 ) -> Font {
        return style.font
    }
    
    public static func headline1( _ style: QvickTextStyle.HeadLine1 ) -> Font {
        return style.font
    }
    public static func headline2( _ style: QvickTextStyle.HeadLine2 ) -> Font {
        return style.font
    }
    
    public static func body1Normal( _ style: QvickTextStyle.Body1Normal ) -> Font {
        return style.font
    }
    public static func body1Reading( _ style: QvickTextStyle.Body1Reading ) -> Font {
        return style.font
    }
    
    public static func body2Normal( _ style: QvickTextStyle.Body2Normal ) -> Font {
        return style.font
    }
    public static func body2Reading( _ style: QvickTextStyle.Body2Reading ) -> Font {
        return style.font
    }
    
    public static func label1Normal( _ style: QvickTextStyle.Label1Normal ) -> Font {
        return style.font
    }
    public static func label1Reading( _ style: QvickTextStyle.Label1Reading ) -> Font {
        return style.font
    }
    public static func label2( _ style: QvickTextStyle.Label2 ) -> Font {
        return style.font
    }
    
    public static func caption1( _ style: QvickTextStyle.Caption1 ) -> Font {
        return style.font
    }
    public static func caption2( _ style: QvickTextStyle.Caption2 ) -> Font {
        return style.font
    }
}
