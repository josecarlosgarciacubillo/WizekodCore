import XCTest
@testable import WizekodCore

final class WizekodCoreTests: XCTestCase {
  
  func testColorRedEqual() {
    let color = WizekodCore.colorFromHexString("FF0000")
    XCTAssertEqual(color, .red)
  }
  
  func testWizekodColorsAreEqual() {
    let color = WizekodCore.colorFromHexString("006736")
    XCTAssertEqual(color, WizekodCore.wizekodColor)
  }
  
  func testSecondaryWizekodColorsAreEqual() {
    let color = WizekodCore.colorFromHexString("FCFFFD")
    XCTAssertEqual(color, WizekodCore.secondaryWizekodColor)
  }
  
  static var allTests = [
    ("testColorRedEqual", testColorRedEqual),
    ("testWizekodColorsAreEqual", testWizekodColorsAreEqual),
    ("testSecondaryWizekodColorsAreEqual", testSecondaryWizekodColorsAreEqual)
  ]
}
