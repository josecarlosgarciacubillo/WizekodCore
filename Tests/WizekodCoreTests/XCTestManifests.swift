import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(WizekodColorTests.allTests),
    testCase(WizekodNetworkingTests.allTests)
  ]
}
#endif
