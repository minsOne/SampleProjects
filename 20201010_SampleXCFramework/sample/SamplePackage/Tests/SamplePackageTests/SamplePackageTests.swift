import XCTest
@testable import SamplePackage

final class SamplePackageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(helloworld(),
                       "Hello World on Sample Framework")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
