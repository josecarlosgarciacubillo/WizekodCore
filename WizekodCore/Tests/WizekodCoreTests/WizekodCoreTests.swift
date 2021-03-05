import XCTest
@testable import WizekodCore

final class WizekodCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(WizekodCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
