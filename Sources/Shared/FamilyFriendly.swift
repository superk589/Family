import CoreGraphics
import Foundation

protocol FamilyFriendly: class {
  func addChild(_ childController: ViewController)
  func addChild<T: ViewController>(_ childController: T,
                                   at index: Int?,
                                   insets: Insets?,
                                   height: CGFloat?,
                                   view handler: ((T) -> View)?) -> Self
  func addChildren(_ childControllers: ViewController ...) -> Self
  func addView(_ subview: View,
               at index: Int?,
               insets: Insets?,
               height: CGFloat?) -> Self
  func moveChild(_ childController: ViewController, to index: Int)  -> Self
  func performBatchUpdates(withDuration duration: Double,
                           _ handler: (FamilyViewController) -> Void,
                           completion: ((FamilyViewController) -> Void)?) -> Self
  func purgeRemovedViews() -> Self
}
