import SwiftUI

extension QvickFont.Pretendard: QvickFont.CanDefine {
    
    public static func register() {
        QvickFont.Pretendard.allCases.forEach {
            guard let fontURL = Bundle.module.url(
                    forResource: "Pretendard-\($0.name)",
                    withExtension: "ttf"
                ),
                      let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
                      let font = CGFont(fontDataProvider) else { return }
                var error: Unmanaged<CFError>?
                CTFontManagerRegisterGraphicsFont(font, &error)
        }
    }
    
    public var name: String {
        switch self {
        case .thin:
            "Pretendard-Thin"
        case .extralight:
            "Pretendard-ExtraLight"
        case .light:
            "Pretendard-Light"
        case .regular:
            "Pretendard-Regular"
        case .medium:
            "Pretendard-Medium"
        case .semibold:
            "Pretendard-SemiBold"
        case .bold:
            "Pretendard-Bold"
        case .extrabold:
            "Pretendard-ExtraBold"
        case .black:
            "Pretendard-Black"
        }
    }
}
