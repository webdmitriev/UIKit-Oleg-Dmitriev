import UIKit

public extension UIGestureRecognizer {

  func removeFromView() {
    view?.removeGestureRecognizer(self)
  }

}