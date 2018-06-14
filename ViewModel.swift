import Foundation

@objcMembers class ViewModel: NSObject {
  dynamic var phrase: String
  override init() {
    phrase = "it"
    super.init()
  }
  
  func addS(phrase: String!) {
    self.phrase = phrase + "s"
  }
}
