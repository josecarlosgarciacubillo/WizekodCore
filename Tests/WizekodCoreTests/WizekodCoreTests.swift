import XCTest
@testable import WizekodCore

final class WizekodCoreTests: XCTestCase {
  
  func testColorRedEqual() {
    let color = WizekodCore.colorFromHexString("FF0000")
    XCTAssertEqual(color, .red)
  }
  
  static var allTests = [
    ("testColorRedEqual", testColorRedEqual)
  ]
}
