import SwiftUI

extension UIDevice {
    var exifOrientation: UInt32 {
        let exifOrientation: DeviceOrientation
        enum DeviceOrientation: UInt32 {
            case top0ColLeft = 1
            case top0ColRight = 2
            case bottom0ColRight = 3
            case bottom0ColLeft = 4
            case left0ColTop = 5
            case right0ColTop = 6
            case right0ColBottom = 7
            case left0ColBottom = 8
        }
        switch orientation {
        case .portraitUpsideDown: exifOrientation = .left0ColBottom
        case .landscapeLeft: exifOrientation = .top0ColLeft
        case .landscapeRight: exifOrientation = .bottom0ColRight
        default: exifOrientation = .right0ColTop
        }
        return exifOrientation.rawValue
    }
}
