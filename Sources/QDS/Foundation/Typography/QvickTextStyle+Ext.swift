import SwiftUI

extension QvickTextStyle.Display1: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 56)
        case .medium: .pretendard(.medium, size: 56)
        case .regular: .pretendard(.regular, size: 56)
        }
    }
}

extension QvickTextStyle.Display2: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 40)
        case .medium: .pretendard(.medium, size: 40)
        case .regular: .pretendard(.regular, size: 40)
        }
    }
}

extension QvickTextStyle.Title1: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 36)
        case .medium: .pretendard(.medium, size: 36)
        case .regular: .pretendard(.regular, size: 36)
        }
    }
}

extension QvickTextStyle.Title2: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 28)
        case .medium: .pretendard(.medium, size: 28)
        case .regular: .pretendard(.regular, size: 28)
        }
    }
}

extension QvickTextStyle.Title3: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 24)
        case .medium: .pretendard(.medium, size: 24)
        case .regular: .pretendard(.regular, size: 24)
        }
    }
}

extension QvickTextStyle.Heading1: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 22)
        case .medium: .pretendard(.medium, size: 22)
        case .regular: .pretendard(.regular, size: 22)
        }
    }
}

extension QvickTextStyle.Heading2: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 20)
        case .medium: .pretendard(.medium, size: 20)
        case .regular: .pretendard(.regular, size: 20)
        }
    }
}

extension QvickTextStyle.HeadLine1: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 18)
        case .medium: .pretendard(.medium, size: 18)
        case .regular: .pretendard(.regular, size: 18)
        }
    }
}

extension QvickTextStyle.HeadLine2: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 17)
        case .medium: .pretendard(.medium, size: 17)
        case .regular: .pretendard(.regular, size: 17)
        }
    }
}

extension QvickTextStyle.Body1Normal: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 16)
        case .medium: .pretendard(.medium, size: 16)
        case .regular: .pretendard(.regular, size: 16)
        }
    }
}

extension QvickTextStyle.Body1Reading: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 16)
        case .medium: .pretendard(.medium, size: 16)
        case .regular: .pretendard(.regular, size: 16)
        }
    }
}

extension QvickTextStyle.Body2Normal: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 15)
        case .medium: .pretendard(.medium, size: 15)
        case .regular: .pretendard(.regular, size: 15)
        }
    }
}

extension QvickTextStyle.Body2Reading: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 15)
        case .medium: .pretendard(.medium, size: 15)
        case .regular: .pretendard(.regular, size: 15)
        }
    }
}

extension QvickTextStyle.Label1Normal: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 14)
        case .medium: .pretendard(.medium, size: 14)
        case .regular: .pretendard(.regular, size: 14)
        }
    }
}

extension QvickTextStyle.Label1Reading: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 14)
        case .medium: .pretendard(.medium, size: 14)
        case .regular: .pretendard(.regular, size: 14)
        }
    }
}

extension QvickTextStyle.Label2: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 13)
        case .medium: .pretendard(.medium, size: 13)
        case .regular: .pretendard(.regular, size: 13)
        }
    }
}

extension QvickTextStyle.Caption1: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 12)
        case .medium: .pretendard(.medium, size: 12)
        case .regular: .pretendard(.regular, size: 12)
        }
    }
}

extension QvickTextStyle.Caption2: QvickFont.Fontable {
    public var font: Font {
        switch self {
        case .bold: .pretendard(.bold, size: 11)
        case .medium: .pretendard(.medium, size: 11)
        case .regular: .pretendard(.regular, size: 11)
        }
    }
}
