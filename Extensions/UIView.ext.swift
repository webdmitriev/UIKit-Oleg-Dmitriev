import UIKit

public extension UIView {

  func addShadow(ofColor color: UIColor, radius: CGFloat, offset: CGSize, opacity: Float) {
    layer.shadowColor = color.cgColor
    layer.shadowOffset = offset
    layer.shadowRadius = radius
    layer.shadowOpacity = opacity
    layer.masksToBounds = false
  }

  func addParallax(amount: CGFloat) {
    motionEffects.removeAll()
    let horizontal = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
    horizontal.minimumRelativeValue = -amount
    horizontal.maximumRelativeValue = amount

    let vertical = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
    vertical.minimumRelativeValue = -amount
    vertical.maximumRelativeValue = amount

    let group = UIMotionEffectGroup()
    group.motionEffects = [horizontal, vertical]
    self.addMotionEffect(group)
  }

  func removeParalax() {
    motionEffects.removeAll()
  }

}



extension UIView {
  static func configure<T: UIView>(view: T, block: @escaping (T) -> ()) -> T {
    view.translatesAutoresizingMaskIntoConstraints = false

    block(view)
    return view
  }
}