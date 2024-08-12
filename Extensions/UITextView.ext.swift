import UIKit

public extension UITextView {

  func layoutDynamicHeight(width: CGFloat) {
    // Require id for dynamic height.
    if isScrollEnabled { isScrollEnabled = false }

    frame.setWidth(width)
    sizeToFit()
    if frame.width != width {
      frame.setWidth(width)
    }
  }

  func layoutDynamicHeight(x: CGFloat, y: CGFloat, width: CGFloat) {
    // Require id for dynamic height.
    if isScrollEnabled { isScrollEnabled = false }

    frame = CGRect.init(x: x, y: y, width: width, height: frame.height)
    sizeToFit()
    if frame.width != width {
      frame.setWidth(width)
    }
  }

}