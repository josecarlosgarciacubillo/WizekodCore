import XCTest
@testable import WizekodCore

final class WizekodColorTests: XCTestCase {
  
  func testColorRedEqual() {
    let color = WizekodCore.Color.fromHexString("FF0000")
    XCTAssertEqual(color, .red)
  }
  
  func testWizekodColorsAreEqual() {
    let color = WizekodCore.Color.fromHexString("006736")
    XCTAssertEqual(color, WizekodCore.Color.wizekodColor)
  }
  
  func testSecondaryWizekodColorsAreEqual() {
    let color = WizekodCore.Color.fromHexString("FCFFFD")
    XCTAssertEqual(color, WizekodCore.Color.secondaryWizekodColor)
  }
  
  static var allTests = [
    ("testColorRedEqual", testColorRedEqual),
    ("testWizekodColorsAreEqual", testWizekodColorsAreEqual),
    ("testSecondaryWizekodColorsAreEqual", testSecondaryWizekodColorsAreEqual)
  ]
}
