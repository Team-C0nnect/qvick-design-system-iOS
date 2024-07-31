import Foundation

extension QvickColor.Semantic {
    public enum ColorPrimary { case light, normal, strong, heavy }
    public enum ColorLabel { case normal, strong, neutral, alternative, assitive, disable, ligntDisable }
    public enum BackgroundNormal { case normal, strong, alternative }
    public enum BackgroundElevated { case normal, alternative }
    public enum Line { case normal, neutral, alternative }
    public enum Status { case positive, cautionary, destructive }
    public enum Common { case white, black }
    public enum ComponentFill { case normal, strong, alternative }
    public enum ComponentMaterial { case dimmer }
}

extension QvickColor.Semantic.ColorPrimary: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .light:
            return QvickColor.Pallete.Blue.w60
        case .normal:
            return QvickColor.Pallete.Blue.w50
        case .strong:
            return QvickColor.Pallete.Blue.w40
        case .heavy:
            return QvickColor.Pallete.Blue.w30
        }
    }
}

extension QvickColor.Semantic.ColorLabel: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .normal:
            return QvickColor.Pallete.Neutral.w5
        case .strong:
            return QvickColor.Pallete.Common.w0
        case .neutral:
            return QvickColor.Pallete.Neutral.w30
        case .alternative:
            return QvickColor.Pallete.Neutral.w40
        case .assitive:
            return QvickColor.Pallete.Neutral.w50
        case .disable:
            return QvickColor.Pallete.Neutral.w90
        case .ligntDisable:
            return QvickColor.Pallete.Neutral.w95
        }
    }
}

extension QvickColor.Semantic.BackgroundNormal: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .normal:
            return QvickColor.Pallete.Common.w100
        case .strong:
            return QvickColor.Pallete.Neutral.w99
        case .alternative:
            return QvickColor.Pallete.Common.w100
        }
    }
}

extension QvickColor.Semantic.BackgroundElevated: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .normal:
            return QvickColor.Pallete.Neutral.w99
        case .alternative:
            return QvickColor.Pallete.Common.w100
        }
    }
}

extension QvickColor.Semantic.Line: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .normal:
            return QvickColor.Pallete.Neutral.w99
        case .neutral:
            return QvickColor.Pallete.Common.w0
        case .alternative:
            return QvickColor.Pallete.Neutral.w80
        }
    }
}

extension QvickColor.Semantic.Status: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .positive:
            return QvickColor.Pallete.Green.w40
        case .cautionary:
            return QvickColor.Pallete.Yellow.w50
        case .destructive:
            return QvickColor.Pallete.Red.w50
        }
    }
}

extension QvickColor.Semantic.Common: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .white:
            return QvickColor.Pallete.Common.w100
        case .black:
            return QvickColor.Pallete.Common.w0
        }
    }
}

extension QvickColor.Semantic.ComponentFill: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .normal:
            return QvickColor.Pallete.Common.w100
        case .strong:
            return QvickColor.Pallete.Neutral.w95
        case .alternative:
            return QvickColor.Pallete.Neutral.w99
        }
    }
}

extension QvickColor.Semantic.ComponentMaterial: QvickColor.CanSemantic {
    public var pallete: any QvickColor.CanPallete {
        switch self {
        case .dimmer:
            return QvickColor.Pallete.Neutral.w90
        }
    }
}
