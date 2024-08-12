import UIKit

public extension UITextField {

  func removeTargetsAndActions() {
    self.removeTarget(nil, action: nil, for: .allEvents)
  }

}