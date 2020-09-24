import XCTest
@testable import Features

final class FeaturesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Features().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
