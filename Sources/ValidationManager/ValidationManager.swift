// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public struct EmailValidator {

    public init() {}

    /// RFC 5322 compliant (practical version)
    public func isValid(email: String) -> Bool {
        let emailRegex =
        #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#

        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }
}
//Password Validations
extension String {
  
  func isContainsNumbers() -> Bool {
      // check if there's a number
      let numberRegEx  = ".*[0-9]+.*"
      let textTestNum = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
      let numberResult = textTestNum.evaluate(with: self)
      // false if no number is found
      return numberResult
  }
  
  func isContainsCapChar() -> Bool {
      // check if there's a Upper case
      let capitalLetterRegEx  = ".*[A-Z]+.*"
      let textTestCap = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
      let capResult = textTestCap.evaluate(with: self)
      // false if no capital char is found
      return capResult
  }
  
  func isContainsSmallChar() -> Bool {
      // check if there's a Small case
      let smallLetterRegEx  = ".*[a-z]+.*"
      let textTestSmall = NSPredicate(format:"SELF MATCHES %@", smallLetterRegEx)
      let smallResult = textTestSmall.evaluate(with: self)
      // false if no Small char is found
      return smallResult
  }
    
  func isContainsSpecialChar() -> Bool {
      // check if there's a Special case
      let specialLetterRegEx  = ".*[!&^%$#@()/_*+-]+.*"
      let textTestSpecial = NSPredicate(format:"SELF MATCHES %@", specialLetterRegEx)
      let specialResult = textTestSpecial.evaluate(with: self)
      // false if no Special char is found
      return specialResult
  }
  
}
