import SwiftUI

public enum QvickTabItem: Int, CaseIterable {
    case notice, home, profile
    
    var icon: Image {
        switch self {
        case .notice:
            Image(systemName: "bell.fill")
        case .home:
            Image(systemName: "house.fill")
        case .profile:
            Image(systemName: "person.crop.circle.fill")
        }
    }
}
