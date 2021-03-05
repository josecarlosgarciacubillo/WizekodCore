//
//  WizekodNetworkingTests.swift
//  WizekodCoreTests
//
//  Created by Carlos Garcia on 05/03/21.
//

import XCTest
@testable import WizekodCore

final class WizekodNetworkingTests: XCTestCase {
  
  func testLoadDataCall() {
    let manager = WizekodCore.Networking.Manager()
    let expectation = XCTestExpectation(description: "Called for data")
    guard let url = URL(string: "https://raywenderlich.com") else {
      return XCTFail("Could not create URL properly")
    }
    manager.loadData(from: url) { result in
      expectation.fulfill()
      switch result {
      case .success(let returnedData):
        XCTAssertNotNil(returnedData, "Response data is nil")
      case .failure(let error):
        XCTFail(error?.localizedDescription ?? "Error forming error result")
      }
    }
    wait(for: [expectation], timeout: 5)
  }
  
  static var allTests = [
    ("testLoadDataCall", testLoadDataCall)
  ]
}
