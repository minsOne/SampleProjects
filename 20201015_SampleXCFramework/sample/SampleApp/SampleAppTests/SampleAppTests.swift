//
//  SampleAppTests.swift
//  SampleAppTests
//
//  Created by minsone on 2020/10/12.
//

import XCTest
import SamplePackage
@testable import SampleApp

class SampleAppTests: XCTestCase {
  func test_helloworld() throws {
    XCTAssertEqual(SamplePackage.helloworld(),
                   "Hello World on Sample Framework")
  }
}
